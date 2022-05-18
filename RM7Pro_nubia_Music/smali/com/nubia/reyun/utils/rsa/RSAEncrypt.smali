.class public Lcom/nubia/reyun/utils/rsa/RSAEncrypt;
.super Ljava/lang/Object;
.source "RSAEncrypt.java"


# static fields
.field private static final HEX_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->HEX_CHAR:[C

    .line 31
    return-void

    .line 30
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    sget-object v2, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->HEX_CHAR:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    sget-object v2, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->HEX_CHAR:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 334
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decrypt(Ljava/security/interfaces/RSAPrivateKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u5bc6\u79c1\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 264
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 265
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :catch_1
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 271
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :catch_2
    move-exception v0

    .line 273
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u5bc6\u79c1\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :catch_3
    move-exception v0

    .line 275
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5bc6\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catch_4
    move-exception v0

    .line 277
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    if-nez p0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 302
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 303
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :catch_1
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 309
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catch_2
    move-exception v0

    .line 311
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u89e3\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :catch_3
    move-exception v0

    .line 313
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5bc6\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catch_4
    move-exception v0

    .line 315
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPrivateKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u52a0\u5bc6\u79c1\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 227
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catch_2
    move-exception v0

    .line 235
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u52a0\u5bc6\u79c1\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :catch_3
    move-exception v0

    .line 237
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :catch_4
    move-exception v0

    .line 239
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u52a0\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2, p1}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 190
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :catch_2
    move-exception v0

    .line 198
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u52a0\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :catch_3
    move-exception v0

    .line 200
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :catch_4
    move-exception v0

    .line 202
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static genKeyPair(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    const/16 v1, 0x400

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 48
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 52
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 55
    :try_start_1
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/utils/rsa/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/publicKey.keystore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/privateKey.keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/io/BufferedWriter;

    invoke-direct {v4, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 66
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 67
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 68
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 69
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 70
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadPrivateKeyByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v3, "/privateKey.keystore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u79c1\u94a5\u6570\u636e\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u79c1\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadPrivateKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 157
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u79c1\u94a5\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :catch_2
    move-exception v0

    .line 164
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u79c1\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadPublicKeyByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v3, "/publicKey.keystore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u516c\u94a5\u6570\u636e\u6d41\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u516c\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 116
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :catch_2
    move-exception v0

    .line 122
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
