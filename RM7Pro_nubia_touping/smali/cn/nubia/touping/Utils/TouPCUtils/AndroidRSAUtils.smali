.class public Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;
.super Ljava/lang/Object;
.source "AndroidRSAUtils.java"


# static fields
.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final RSA:Ljava/lang/String; = "RSA"

.field public static final RSA_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeys(I)Ljava/util/Map;
    .locals 15
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    const-string v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 164
    .local v5, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v5, p0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 166
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 168
    .local v3, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v8

    .line 169
    .local v8, "publicKey":Ljava/security/Key;
    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-static {v12}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "publicKeyStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    .line 172
    .local v6, "privateKey":Ljava/security/Key;
    invoke-interface {v6}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-static {v12}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "privateKeyStr":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v4, "keyPairMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "publicKey"

    invoke-interface {v4, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "publicKey:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    const-string v12, "privateKey"

    invoke-interface {v4, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "privateKey:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v11

    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    .line 179
    .local v11, "rsp":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 180
    .local v1, "bit":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 181
    .local v0, "b":[B
    invoke-static {v0}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, "retValue":Ljava/lang/String;
    const-string v12, "model"

    invoke-interface {v4, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "model:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    return-object v4

    .line 159
    .end local v0    # "b":[B
    .end local v1    # "bit":Ljava/math/BigInteger;
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    .end local v4    # "keyPairMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v6    # "privateKey":Ljava/security/Key;
    .end local v7    # "privateKeyStr":Ljava/lang/String;
    .end local v8    # "publicKey":Ljava/security/Key;
    .end local v9    # "publicKeyStr":Ljava/lang/String;
    .end local v10    # "retValue":Ljava/lang/String;
    .end local v11    # "rsp":Ljava/security/interfaces/RSAPublicKey;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "No such algorithm-->[RSA]"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 4
    .param p0, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 48
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 49
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 50
    .local v0, "key":Ljava/security/interfaces/RSAPrivateKey;
    return-object v0
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 4
    .param p0, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 35
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    .local v2, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 37
    .local v0, "key":Ljava/security/interfaces/RSAPublicKey;
    return-object v0
.end method

.method public static privateDecrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;

    .prologue
    .line 77
    :try_start_0
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 78
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 79
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 80
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    .line 79
    invoke-static {v0, v3, v4, v5}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 81
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u5bc6\u5b57\u7b26\u4e32["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\u65f6\u9047\u5230\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static privateEncrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/security/interfaces/RSAPrivateKey;

    .prologue
    .line 93
    :try_start_0
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 94
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 95
    const/4 v2, 0x1

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 96
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 95
    invoke-static {v0, v2, v3, v4}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 97
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u5bc6\u5b57\u7b26\u4e32["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\u65f6\u9047\u5230\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static publicDecrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 109
    :try_start_0
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 110
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 111
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 112
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    .line 111
    invoke-static {v0, v3, v4, v5}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 113
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u5bc6\u5b57\u7b26\u4e32["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\u65f6\u9047\u5230\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static publicEncrypt(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 61
    :try_start_0
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    const/4 v2, 0x1

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 63
    invoke-static {v0, v2, v3, v4}, Lcn/nubia/touping/Utils/TouPCUtils/AndroidRSAUtils;->rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/TouPCUtils/Base64Utils;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 65
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u5bc6\u5b57\u7b26\u4e32["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\u65f6\u9047\u5230\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B
    .locals 10
    .param p0, "cipher"    # Ljavax/crypto/Cipher;
    .param p1, "opmode"    # I
    .param p2, "datas"    # [B
    .param p3, "keySize"    # I

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "maxBlock":I
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 120
    div-int/lit8 v3, p3, 0x8

    .line 124
    :goto_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 127
    .local v4, "offSet":I
    const/4 v2, 0x0

    .line 129
    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v7, p2

    if-le v7, v4, :cond_2

    .line 130
    array-length v7, p2

    sub-int/2addr v7, v4

    if-le v7, v3, :cond_1

    .line 131
    invoke-virtual {p0, p2, v4, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 135
    .local v0, "buff":[B
    :goto_2
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    mul-int v4, v2, v3

    goto :goto_1

    .line 122
    .end local v0    # "buff":[B
    .end local v2    # "i":I
    .end local v4    # "offSet":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    div-int/lit8 v7, p3, 0x8

    add-int/lit8 v3, v7, -0xb

    goto :goto_0

    .line 133
    .restart local v2    # "i":I
    .restart local v4    # "offSet":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    array-length v7, p2

    sub-int/2addr v7, v4

    invoke-virtual {p0, p2, v4, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "buff":[B
    goto :goto_2

    .line 139
    .end local v0    # "buff":[B
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u52a0\u89e3\u5bc6\u9600\u503c\u4e3a["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\u7684\u6570\u636e\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 144
    .local v6, "resultDatas":[B
    if-eqz v5, :cond_3

    .line 145
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    const/4 v5, 0x0

    .line 151
    :cond_3
    :goto_3
    return-object v6

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
