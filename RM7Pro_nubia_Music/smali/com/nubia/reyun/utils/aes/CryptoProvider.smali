.class public abstract Lcom/nubia/reyun/utils/aes/CryptoProvider;
.super Ljava/lang/Object;
.source "CryptoProvider.java"


# instance fields
.field protected final mBlockSize:I

.field protected final mPaddingMode:Lcom/nubia/reyun/utils/aes/PaddingMode;


# direct methods
.method public constructor <init>(ILcom/nubia/reyun/utils/aes/PaddingMode;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoException;

    const-string v1, "The block size must be a multiple of 64."

    invoke-direct {v0, v1}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mBlockSize:I

    .line 45
    iput-object p2, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mPaddingMode:Lcom/nubia/reyun/utils/aes/PaddingMode;

    .line 46
    return-void
.end method

.method private create(Lcom/nubia/reyun/utils/aes/CryptoMode;Lcom/nubia/reyun/utils/aes/CipherMode;)Ljavax/crypto/Cipher;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 49
    iget-object v0, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mPaddingMode:Lcom/nubia/reyun/utils/aes/PaddingMode;

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->NoPadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/aes/PaddingMode;->name()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nubia/reyun/utils/aes/CryptoMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nubia/reyun/utils/aes/CipherMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mPaddingMode:Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-virtual {v0}, Lcom/nubia/reyun/utils/aes/PaddingMode;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p3}, Lcom/nubia/reyun/utils/aes/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/nubia/reyun/utils/aes/CryptoProvider;->cbc_decrypt([B[B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected cbc_decrypt(Lcom/nubia/reyun/utils/aes/CryptoMode;[B[B[B)[B
    .locals 4

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/nubia/reyun/utils/aes/CryptoMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 111
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 112
    sget-object v2, Lcom/nubia/reyun/utils/aes/CipherMode;->CBC:Lcom/nubia/reyun/utils/aes/CipherMode;

    invoke-direct {p0, p1, v2}, Lcom/nubia/reyun/utils/aes/CryptoProvider;->create(Lcom/nubia/reyun/utils/aes/CryptoMode;Lcom/nubia/reyun/utils/aes/CipherMode;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 113
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    invoke-virtual {v2, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :catch_3
    move-exception v0

    .line 122
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract cbc_decrypt([B[B[B)[B
.end method

.method public cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CryptoProvider;->cbc_encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/utils/aes/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cbc_encrypt(Lcom/nubia/reyun/utils/aes/CryptoMode;[B[B[B)[B
    .locals 4

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/nubia/reyun/utils/aes/CryptoMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 73
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 74
    sget-object v2, Lcom/nubia/reyun/utils/aes/CipherMode;->CBC:Lcom/nubia/reyun/utils/aes/CipherMode;

    invoke-direct {p0, p1, v2}, Lcom/nubia/reyun/utils/aes/CryptoProvider;->create(Lcom/nubia/reyun/utils/aes/CryptoMode;Lcom/nubia/reyun/utils/aes/CipherMode;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 81
    iget-object v0, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mPaddingMode:Lcom/nubia/reyun/utils/aes/PaddingMode;

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->SpacePadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    if-ne v0, v1, :cond_0

    .line 82
    iget v0, p0, Lcom/nubia/reyun/utils/aes/CryptoProvider;->mBlockSize:I

    invoke-static {v0, p4}, Lcom/nubia/reyun/utils/aes/Padding;->spacePadding(I[B)[B

    move-result-object v0

    .line 83
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_2
    move-exception v0

    .line 93
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :catch_3
    move-exception v0

    .line 95
    new-instance v1, Lcom/nubia/reyun/utils/aes/CryptoException;

    invoke-direct {v1, v0}, Lcom/nubia/reyun/utils/aes/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract cbc_encrypt([B[B[B)[B
.end method
