.class Lcn/nubia/cloud/utils/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 20
    .local v6, "start":J
    const-string v5, ""

    .line 22
    .local v5, "signCode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 24
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 25
    .local v4, "sign":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/cloud/utils/SignatureUtil;->parseSignature([B)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 30
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "sign":Landroid/content/pm/Signature;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32
    .local v2, "end":J
    const-string v8, "pkgName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSignCode spend mills:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v8, "pkgName"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v5

    .line 27
    .end local v2    # "end":J
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseSignature([B)Ljava/lang/String;
    .locals 10
    .param p0, "signature"    # [B

    .prologue
    .line 39
    const-string v6, ""

    .line 41
    .local v6, "sign":Ljava/lang/String;
    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 43
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 45
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "pubKey":Ljava/lang/String;
    invoke-static {v5}, Lcn/nubia/cloud/utils/SignatureUtil;->subString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "ss":Ljava/lang/String;
    const-string v8, ","

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 49
    const-string v8, "modulus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "aa":I
    const-string v8, "publicexponent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "bb":I
    add-int/lit8 v8, v0, 0x8

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 55
    .end local v0    # "aa":I
    .end local v1    # "bb":I
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "pubKey":Ljava/lang/String;
    .end local v7    # "ss":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 52
    :catch_0
    move-exception v4

    .line 53
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static subString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sub"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v2, "\\s*|\t|\r|\n"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 60
    .local v1, "pp":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    .local v0, "mm":Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
