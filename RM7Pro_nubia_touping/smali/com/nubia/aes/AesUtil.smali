.class public Lcom/nubia/aes/AesUtil;
.super Ljava/lang/Object;
.source "AesUtil.java"


# static fields
.field private static final HEX_CHAR_TABLE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nubia/aes/AesUtil;->HEX_CHAR_TABLE:[C

    return-void

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bin2hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    const/4 v5, 0x0

    .line 210
    :goto_0
    return-object v5

    .line 205
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v2, "hex":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arrayOfByte":[B
    array-length v4, p0

    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 206
    :cond_1
    aget-byte v1, v0, v3

    .line 207
    .local v1, "by":B
    sget-object v5, Lcom/nubia/aes/AesUtil;->HEX_CHAR_TABLE:[C

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    sget-object v5, Lcom/nubia/aes/AesUtil;->HEX_CHAR_TABLE:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "iv"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p2}, Lcom/nubia/aes/AesUtil;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nubia/aes/AesUtil;->cbc_decrypt([B[B[B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static cbc_decrypt([B[B[B)[B
    .locals 6
    .param p0, "key"    # [B
    .param p1, "iv"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 161
    .local v3, "sks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 162
    .local v2, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const-string v4, "AES"

    const-string v5, "CBC"

    invoke-static {v4, v5}, Lcom/nubia/aes/AesUtil;->create(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 163
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 164
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 165
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ips":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "sks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "iv"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nubia/aes/AesUtil;->cbc_encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/aes/AesUtil;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static cbc_encrypt([B[B[B)[B
    .locals 6
    .param p0, "key"    # [B
    .param p1, "iv"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    .local v3, "sks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 130
    .local v2, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const-string v4, "AES"

    const-string v5, "CBC"

    invoke-static {v4, v5}, Lcom/nubia/aes/AesUtil;->create(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 131
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 133
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 135
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ips":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "sks":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "cryptoType"    # Ljava/lang/String;
    .param p1, "cipherType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 171
    const-string v2, "PKCS5Padding"

    .line 172
    .local v2, "paddingName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "algorithm":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 178
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1}, Lcom/nubia/aes/AesUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p2}, Lcom/nubia/aes/AesUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {p1, p2, p0}, Lcom/nubia/aes/AesUtil;->cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "output"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 82
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/nubia/aes/AesUtil;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "decodeResult":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 84
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "decodeResult":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v2, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 86
    .restart local v0    # "decodeResult":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/nubia/aes/AesUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p2}, Lcom/nubia/aes/AesUtil;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p1, p2, p0}, Lcom/nubia/aes/AesUtil;->cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v3, "format_data_timestamp"

    .line 25
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 24
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p0}, Lcom/nubia/aes/AesUtil;->packageParms(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "dataResult":Ljava/lang/String;
    const-string v3, "auth_token_id"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    .local v0, "authTokenId":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 29
    const-string v3, "format_data_result"

    .line 30
    invoke-static {v1, p1, p2}, Lcom/nubia/aes/AesUtil;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v3, "auth_token_id"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "authTokenId":Ljava/lang/String;
    .end local v1    # "dataResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "authInfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    const/4 v5, 0x0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 107
    .local v0, "authInfoLen":I
    if-le v0, v2, :cond_1

    .line 108
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_0
    :goto_0
    return-object p0

    .line 109
    :cond_1
    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "format":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hex2bin(Ljava/lang/String;)[B
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    .line 184
    if-nez p0, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 198
    :cond_0
    return-object v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 189
    .local v4, "len":I
    new-array v0, v4, [B

    .line 190
    .local v0, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 191
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v1, v6

    .line 192
    .local v1, "high":B
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v5, v6

    .line 193
    .local v5, "low":B
    shl-int/lit8 v6, v1, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 190
    add-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method private static packageParms(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 39
    .local v5, "iter":Ljava/util/Iterator;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v8, "parmsStr":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 41
    .local v6, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 43
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "key":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 45
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 47
    .local v9, "value":Ljava/lang/Object;
    :try_start_0
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_4

    .line 48
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    move-object v10, v0

    .line 49
    .local v10, "valueCollection":Ljava/util/Collection;
    const/4 v3, 0x1

    .line 50
    .local v3, "firstTag":Z
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "localIterator1":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_2

    .line 73
    .end local v3    # "firstTag":Z
    .end local v7    # "localIterator1":Ljava/util/Iterator;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "valueCollection":Ljava/util/Collection;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 74
    const-string v11, "&"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 50
    .restart local v3    # "firstTag":Z
    .restart local v7    # "localIterator1":Ljava/util/Iterator;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v10    # "valueCollection":Ljava/util/Collection;
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 51
    .local v4, "item":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 52
    const/4 v3, 0x0

    .line 56
    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 57
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 59
    const-string v13, "UTF-8"

    .line 58
    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 70
    .end local v3    # "firstTag":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v7    # "localIterator1":Ljava/util/Iterator;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "valueCollection":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 54
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "firstTag":Z
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v7    # "localIterator1":Ljava/util/Iterator;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v10    # "valueCollection":Ljava/util/Collection;
    :cond_3
    :try_start_2
    const-string v11, "&"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 62
    .end local v3    # "firstTag":Z
    .end local v4    # "item":Ljava/lang/Object;
    .end local v7    # "localIterator1":Ljava/util/Iterator;
    .end local v10    # "valueCollection":Ljava/util/Collection;
    :cond_4
    if-nez v9, :cond_5

    .line 63
    const-string v9, ""

    .line 65
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 66
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static padLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "n"    # I

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static padRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "n"    # I

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static spacePadding(I[B)[B
    .locals 4
    .param p0, "blockSize"    # I
    .param p1, "data"    # [B

    .prologue
    .line 141
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 142
    .local v1, "d":Ljava/lang/String;
    move-object v0, p1

    .line 143
    .local v0, "content":[B
    array-length v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 144
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    rem-int/2addr v3, p0

    if-nez v3, :cond_0

    .line 147
    return-object v0

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/nubia/aes/AesUtil;->padRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
