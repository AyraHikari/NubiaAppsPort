.class public final Lcom/huanju/ssp/base/utils/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# static fields
.field private static final ALGORITHM_NAME:Ljava/lang/String; = "AES"

.field private static final DETRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final HEX_DIGITS:[C

.field private static final IV:Ljava/lang/String; = "2011121211143000"

.field private static final IV_RECOMMEND:Ljava/lang/String; = "4178408689852075"

.field private static final IV_WEB:Ljava/lang/String; = "3591595947290616"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "huanju@game"

.field private static final PRIVATE_KEY_RECOMMEND:Ljava/lang/String; = "DZEwr3ftoWmBiocs"

.field private static final PRIVATE_KEY_WEB:Ljava/lang/String; = "ftwup7tg49y@nubia"

.field private static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huanju/ssp/base/utils/KeyUtil;->HEX_DIGITS:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B

    .prologue
    .line 209
    const/16 v1, 0xf0

    .line 210
    .local v1, "CONSTANT_NUMBER0XF0":I
    const/16 v0, 0xf

    .line 211
    .local v0, "CONSTANT_NUMBER0X0F":I
    const/4 v2, 0x4

    .line 212
    .local v2, "CONSTANT_NUMBER4":I
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_0

    .line 214
    sget-object v6, Lcom/huanju/ssp/base/utils/KeyUtil;->HEX_DIGITS:[C

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    sget-object v6, Lcom/huanju/ssp/base/utils/KeyUtil;->HEX_DIGITS:[C

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "string":Ljava/lang/String;
    return-object v5
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "cbcIv"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 180
    .local v3, "skeSpect":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 182
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 184
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 186
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 188
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Base64;->decode([B)[B

    move-result-object v1

    .line 107
    .local v1, "decrypted":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "huanju@game"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 112
    .local v4, "size":I
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v5, "2011121211143000"

    invoke-static {v5, v2, v1}, Lcom/huanju/ssp/base/utils/KeyUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 117
    .local v0, "data":[B
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 118
    .local v3, "realText":Ljava/lang/String;
    return-object v3
.end method

.method public static decryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Base64;->decode([B)[B

    move-result-object v1

    .line 127
    .local v1, "decrypted":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftwup7tg49y@nubia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 132
    .local v4, "size":I
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v5, "3591595947290616"

    invoke-static {v5, v2, v1}, Lcom/huanju/ssp/base/utils/KeyUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 137
    .local v0, "data":[B
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 138
    .local v3, "realText":Ljava/lang/String;
    return-object v3
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 6
    .param p0, "cbcIv"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 155
    .local v3, "sksSpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 157
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 159
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 161
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 163
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "huanju@game"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 50
    .local v3, "size":I
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v4, "2011121211143000"

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/huanju/ssp/base/utils/KeyUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 56
    .local v0, "data":[B
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "encText":Ljava/lang/String;
    return-object v1
.end method

.method public static encryptAESRecommend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DZEwr3ftoWmBiocs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptAESRecommend uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptAESRecommend key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 66
    const-string v4, "encryptAESRecommend PRIVATE_KEY_RECOMMEND:DZEwr3ftoWmBiocs"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 70
    .local v3, "size":I
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v4, "4178408689852075"

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/huanju/ssp/base/utils/KeyUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 74
    .local v0, "data":[B
    const-string v4, "encryptAESRecommend IV_RECOMMEND:4178408689852075"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "encText":Ljava/lang/String;
    return-object v1
.end method

.method public static encryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ftwup7tg49y@nubia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 90
    .local v3, "size":I
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v4, "3591595947290616"

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/huanju/ssp/base/utils/KeyUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 96
    .local v0, "data":[B
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "encText":Ljava/lang/String;
    return-object v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalString"    # Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 196
    .local v1, "digester":Ljava/security/MessageDigest;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 201
    .local v0, "b":[B
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/KeyUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 197
    .end local v0    # "b":[B
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 202
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
