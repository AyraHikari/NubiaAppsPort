.class public Lcom/nubia/reyun/utils/rsa/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final IV:Ljava/lang/String; = "6473271569321021"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 126
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "6473271569321021"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 36
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 37
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 39
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 40
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 42
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 44
    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 45
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptNew(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "6473271569321021"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 56
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAesKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    const-string v1, ""

    .line 103
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 104
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 105
    const/16 v3, 0x80

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 106
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/AES;->byteToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 109
    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 112
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u6ca1\u6709\u6b64\u7b97\u6cd5\u3002"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSPPubkey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    const-string v1, "pubpsw"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public static getSPVer()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    const-string v1, "ry"

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    const-string v1, "pubver"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    return v0
.end method

.method public static getSendData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 181
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string p1, "518c2e373ebe46eb"

    .line 184
    :cond_0
    invoke-static {p0, p1}, Lcom/nubia/reyun/utils/rsa/AES;->encryptNew(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 187
    invoke-static {}, Lcom/nubia/reyun/utils/rsa/AES;->getSPVer()I

    move-result v3

    .line 188
    invoke-static {}, Lcom/nubia/reyun/utils/rsa/AES;->getSPPubkey()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCW8j7TRqevpsAoWS7qWbHofKYiF1ZEVBtxzqpkU0OREYfSj+NBc2uEcBYcIMGJaKML11zFL0gLWxSjh3LZ+roza1kq8FaligQjeHxmf7lueyRJSlLL3BDW8teXrLBD30c19upLJ6uqyVQWtbmv6+34MfIMJdvKO5xDqRgrvms+JwIDAQAB"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v2

    .line 196
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 195
    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B

    move-result-object v2

    .line 198
    invoke-static {v3}, Lcom/nubia/reyun/utils/rsa/AES;->intToBytes(I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    .line 215
    :goto_0
    :try_start_2
    array-length v1, v4

    add-int/lit16 v1, v1, 0x84

    new-array v1, v1, [B

    .line 216
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    const/4 v2, 0x0

    const/4 v5, 0x4

    const/16 v6, 0x80

    invoke-static {v3, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    const/4 v2, 0x0

    const/16 v3, 0x84

    array-length v5, v4

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 224
    :goto_1
    return-object v0

    .line 199
    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    :try_start_3
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCW8j7TRqevpsAoWS7qWbHofKYiF1ZEVBtxzqpkU0OREYfSj+NBc2uEcBYcIMGJaKML11zFL0gLWxSjh3LZ+roza1kq8FaligQjeHxmf7lueyRJSlLL3BDW8teXrLBD30c19upLJ6uqyVQWtbmv6+34MfIMJdvKO5xDqRgrvms+JwIDAQAB"

    invoke-static {v1}, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 204
    invoke-static {v1, v2}, Lcom/nubia/reyun/utils/rsa/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B

    move-result-object v2

    .line 208
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nubia/reyun/utils/rsa/AES;->intToBytes(I)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    .line 209
    goto :goto_0

    :catch_1
    move-exception v1

    .line 211
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 220
    :catch_2
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static intToBytes(I)[B
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 170
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 171
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 173
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    return-object v0
.end method

.method public static setSPPubkey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    const-string v1, "pubpsw"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void
.end method

.method public static setSPVer(I)V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    const-string v1, "ry"

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    const-string v1, "pubver"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method
