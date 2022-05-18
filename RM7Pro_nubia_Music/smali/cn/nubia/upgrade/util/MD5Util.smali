.class public Lcn/nubia/upgrade/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/upgrade/util/MD5Util;->HEX_DIGITS:[C

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 55
    aget-byte v0, v3, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const-string v0, "0"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x400

    .line 14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    new-array v2, v3, [B

    .line 24
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 25
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    :goto_0
    const/4 v1, 0x0

    const/16 v5, 0x400

    invoke-virtual {v4, v2, v1, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 27
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_1
    return-object v0

    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcn/nubia/upgrade/util/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_1
    const-string v1, "MD5"

    const-string v2, "md5 null"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    array-length v2, p0

    .line 70
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    sget-object v3, Lcn/nubia/upgrade/util/MD5Util;->HEX_DIGITS:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    sget-object v3, Lcn/nubia/upgrade/util/MD5Util;->HEX_DIGITS:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
