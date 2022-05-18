.class public Lcom/huanju/ssp/base/utils/AesCbc128;
.super Ljava/lang/Object;
.source "AesCbc128.java"


# static fields
.field private static final CRYPTO_MODE:Ljava/lang/String; = "AES"

.field private static final algorithm:Ljava/lang/String; = "AES/CBC/PKCS5Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p3}, Lcom/huanju/ssp/base/utils/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/huanju/ssp/base/utils/AesCbc128;->cbc_decrypt([B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected cbc_decrypt([B[B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .local v2, "sks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    .local v1, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 31
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 32
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/huanju/ssp/base/utils/AesCbc128;->cbc_encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cbc_encrypt([B[B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    .local v2, "sks":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    .local v1, "ips":Ljavax/crypto/spec/IvParameterSpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 22
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 23
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method
