.class public Lcom/nubia/reyun/utils/rsa/RSASignature;
.super Ljava/lang/Object;
.source "RSASignature.java"


# static fields
.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 110
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 111
    invoke-static {p2}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 112
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 116
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 121
    invoke-static {p1}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 83
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 84
    invoke-static {p2}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 85
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 89
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 92
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 94
    invoke-static {p1}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 56
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 58
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 61
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/nubia/reyun/utils/rsa/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 31
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 34
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 39
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method
