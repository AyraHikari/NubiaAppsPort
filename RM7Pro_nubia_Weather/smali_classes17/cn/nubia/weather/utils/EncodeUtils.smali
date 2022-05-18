.class public Lcn/nubia/weather/utils/EncodeUtils;
.super Ljava/lang/Object;
.source "EncodeUtils.java"


# static fields
.field private static final encodeTable:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C

.field private static final lead2byte:C

.field private static final lead4byte:C

.field private static final lead6byte:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->last2byte:C

    .line 23
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->last4byte:C

    .line 24
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->last6byte:C

    .line 25
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->lead6byte:C

    .line 26
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->lead4byte:C

    .line 27
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcn/nubia/weather/utils/EncodeUtils;->lead2byte:C

    .line 28
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/weather/utils/EncodeUtils;->encodeTable:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "from"    # [B

    .prologue
    .line 86
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p0

    int-to-double v4, v4

    const-wide v6, 0x3ff570a3d70a3d71L    # 1.34

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 87
    .local v3, "to":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 88
    .local v2, "num":I
    const/4 v0, 0x0

    .line 89
    .local v0, "currentByte":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 90
    rem-int/lit8 v2, v2, 0x8

    .line 91
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 92
    packed-switch v2, :pswitch_data_0

    .line 115
    :cond_0
    :goto_2
    :pswitch_0
    sget-object v4, Lcn/nubia/weather/utils/EncodeUtils;->encodeTable:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    .line 94
    :pswitch_1
    aget-byte v4, p0, v1

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->lead6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 95
    ushr-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 96
    goto :goto_2

    .line 98
    :pswitch_2
    aget-byte v4, p0, v1

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->last6byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 99
    goto :goto_2

    .line 101
    :pswitch_3
    aget-byte v4, p0, v1

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->last4byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 102
    shl-int/lit8 v4, v0, 0x2

    int-to-char v0, v4

    .line 103
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 104
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->lead2byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 108
    :pswitch_4
    aget-byte v4, p0, v1

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->last2byte:C

    and-int/2addr v4, v5

    int-to-char v0, v4

    .line 109
    shl-int/lit8 v4, v0, 0x4

    int-to-char v0, v4

    .line 110
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 111
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcn/nubia/weather/utils/EncodeUtils;->lead4byte:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v0

    int-to-char v0, v4

    goto :goto_2

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v1, v4, 0x4

    :goto_3
    if-lez v1, :cond_3

    .line 121
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getEncodedHmacMd5Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 60
    .local v3, "sEncodedString":Ljava/lang/String;
    :try_start_0
    const-string v5, "HmacMD5"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 61
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacMD5"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    .local v4, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 65
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 66
    const/4 v5, 0x0

    .line 82
    .end local v0    # "bytes":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 69
    .restart local v0    # "bytes":[B
    .restart local v2    # "mac":Ljavax/crypto/Mac;
    .restart local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    invoke-static {v0}, Lcn/nubia/weather/utils/EncodeUtils;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    const-string v5, "ISO-8859-1"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .end local v0    # "bytes":[B
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    :goto_1
    move-object v5, v3

    .line 82
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static standardURLEncoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "byteHMAC":[B
    const-string v6, ""

    .line 39
    .local v6, "urlEncoder":Ljava/lang/String;
    :try_start_0
    const-string v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 40
    .local v3, "mac":Ljavax/crypto/Mac;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "HmacSHA1"

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    .local v5, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lcn/nubia/weather/utils/EncodeUtils;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "oauth":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 46
    const-string v7, "utf8"

    invoke-static {v4, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 54
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "oauth":Ljava/lang/String;
    .end local v5    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    return-object v6

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e1":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e1":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 52
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
