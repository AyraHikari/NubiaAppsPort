.class Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;
.super Ljava/lang/Object;
.source "AesFormatDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/utils/AesFormatDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Aes128"
.end annotation


# static fields
.field private static final AES:Lcom/huanju/ssp/base/utils/AesCbc128;

.field private static final AUTH_INFO_LENGTH:I = 0x10

.field private static final AUTH_SUFFIX_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/huanju/ssp/base/utils/AesCbc128;

    invoke-direct {v0}, Lcom/huanju/ssp/base/utils/AesCbc128;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->AES:Lcom/huanju/ssp/base/utils/AesCbc128;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p2}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 138
    :try_start_0
    sget-object v2, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->AES:Lcom/huanju/ssp/base/utils/AesCbc128;

    invoke-virtual {v2, p1, p2, p0}, Lcom/huanju/ssp/base/utils/AesCbc128;->cbc_decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v0

    .line 149
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v0

    .line 152
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v0

    .line 155
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method static encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p2}, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 112
    :try_start_0
    sget-object v2, Lcom/huanju/ssp/base/utils/AesFormatDataImpl$Aes128;->AES:Lcom/huanju/ssp/base/utils/AesCbc128;

    invoke-virtual {v2, p1, p2, p0}, Lcom/huanju/ssp/base/utils/AesCbc128;->cbc_encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v0

    .line 123
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method private static formatAuthInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "authInfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    .local v0, "authInfoLen":I
    if-le v0, v2, :cond_1

    .line 163
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_0
    :goto_0
    return-object p0

    .line 164
    :cond_1
    if-ge v0, v2, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "format":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
