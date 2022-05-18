.class public final Lcom/loc/dy;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:[B

.field private static final d:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/loc/dy;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/loc/dy;->b:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/loc/dy;->c:[B

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/loc/dy;->c:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/loc/dy;->d:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

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

    :array_1
    .array-data 1
        0x3dt
        0x3dt
        0x51t
        0x41t
        0x41t
        0x45t
        0x77t
        0x41t
        0x43t
        0x30t
        0x4at
        0x50t
        0x73t
        0x74t
        0x36t
        0x4bt
        0x68t
        0x4ct
        0x7at
        0x61t
        0x58t
        0x63t
        0x35t
        0x47t
        0x31t
        0x7at
        0x44t
        0x46t
        0x4ft
        0x68t
        0x71t
        0x71t
        0x41t
        0x61t
        0x4ct
        0x36t
        0x41t
        0x42t
        0x57t
        0x35t
        0x67t
        0x55t
        0x54t
        0x71t
        0x47t
        0x44t
        0x45t
        0x4ct
        0x50t
        0x52t
        0x6at
        0x33t
        0x42t
        0x4bt
        0x4bt
        0x45t
        0x62t
        0x37t
        0x54t
        0x6ct
        0x73t
        0x7at
        0x33t
        0x6at
        0x4ct
        0x37t
        0x58t
        0x7at
        0x46t
        0x79t
        0x49t
        0x4bt
        0x34t
        0x32t
        0x2bt
        0x65t
        0x46t
        0x79t
        0x38t
        0x69t
        0x73t
        0x69t
        0x59t
        0x78t
        0x75t
        0x70t
        0x35t
        0x30t
        0x4ct
        0x51t
        0x46t
        0x56t
        0x6ct
        0x6et
        0x49t
        0x41t
        0x42t
        0x4at
        0x41t
        0x53t
        0x77t
        0x41t
        0x77t
        0x53t
        0x44t
        0x41t
        0x51t
        0x42t
        0x42t
        0x45t
        0x51t
        0x41t
        0x4et
        0x63t
        0x76t
        0x68t
        0x49t
        0x5at
        0x6ft
        0x4bt
        0x4at
        0x59t
        0x51t
        0x44t
        0x77t
        0x77t
        0x46t
        0x4dt
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x8t
        0xdt
        0x8t
        0x7t
        0x6t
        0x5t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SHA1"

    invoke-static {v1, p0}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MD5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Encrypt"

    const-string v3, "generatorKey"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p0}, Lcom/loc/r;->a([BLjava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v3, 0x2

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    sget-object v5, Lcom/loc/dy;->a:[C

    aget-byte v6, v2, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/loc/dy;->a:[C

    aget-byte v6, v2, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Encrypt"

    const-string v3, "encode"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/loc/dy;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dl;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "WUlNBL0VDQi9PQUVQV0lUSFNIQS0xQU5ETUdGMVBBRERJTkc"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/loc/dy;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Encrypt"

    const-string v2, "aesEncrypt"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    const/16 v3, 0x10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Encrypt"

    const-string v3, "createKey"

    invoke-static {v1, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b([B)[B
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    array-length v2, p0

    add-int/lit8 v2, v2, -0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {p0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x10

    const/4 v4, 0x0

    array-length v5, p0

    add-int/lit8 v5, v5, -0x10

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    if-eqz p0, :cond_0

    array-length v0, p0

    :cond_0
    const-string v2, "Encrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decryptRsponse length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/loc/dy;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Encrypt"

    const-string v2, "aesDecrypt"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
