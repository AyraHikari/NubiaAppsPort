.class public Lcom/hpplay/common/utils/EncryptUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HPUTILS_CLASS_PATH:Ljava/lang/String; = "com.hpplay.sdk.source.common.utils.HapplayUtils"

.field private static final TAG:Ljava/lang/String; = "EncryptUtil"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fnvHash(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 30
    .line 31
    const v1, -0x7ee3623b

    .line 32
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    const v2, 0x1000193

    mul-int/2addr v1, v2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    shl-int/lit8 v0, v1, 0xd

    add-int/2addr v0, v1

    .line 35
    shr-int/lit8 v1, v0, 0x7

    xor-int/2addr v0, v1

    .line 36
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 37
    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    .line 38
    shl-int/lit8 v1, v0, 0x5

    add-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public static getEncryptData(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 118
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.common.utils.HapplayUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    const-string v1, "strToMdHash"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 121
    const-string v1, "EncryptUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "EncryptUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static md5EncryData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, ""

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/hpplay/common/utils/EncryptUtil;->getEncryptData(Ljava/lang/String;)[B

    move-result-object v3

    .line 101
    const-string v1, ""

    .line 102
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v1, v3, v2

    .line 103
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "EncryptUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 113
    const-string v0, ""

    goto :goto_0
.end method

.method public static md5EncryData16(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 82
    invoke-static {p0}, Lcom/hpplay/common/utils/EncryptUtil;->md5EncryData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 84
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static parseMd5L16ToLong(Ljava/lang/String;)J
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "EncryptUtil"

    const-string v1, "parseMd5L16ToLong error, invalid input"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-wide v2, v4

    .line 72
    :cond_0
    :goto_0
    return-wide v2

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 55
    const-wide/16 v2, 0x0

    .line 56
    const/4 v0, 0x0

    :goto_1
    array-length v1, v7

    if-ge v0, v1, :cond_0

    .line 58
    const/4 v1, 0x4

    shl-long/2addr v2, v1

    .line 60
    aget-byte v1, v7, v0

    add-int/lit8 v1, v1, -0x30

    int-to-byte v1, v1

    .line 62
    const/16 v8, 0x9

    if-le v1, v8, :cond_2

    .line 63
    add-int/lit8 v1, v1, -0x27

    int-to-byte v1, v1

    .line 66
    :cond_2
    const/16 v8, 0xf

    if-gt v1, v8, :cond_3

    if-gez v1, :cond_4

    .line 67
    :cond_3
    const-string v0, "EncryptUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMd5L16ToLong error,For input string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-wide v2, v4

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
