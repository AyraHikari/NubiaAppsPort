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
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v5, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 52
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 54
    .local v2, "hash":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 55
    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "res":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    const-string v6, "0"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const-string v6, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    .end local v3    # "i":I
    .end local v4    # "res":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 63
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x400

    .line 14
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 19
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v0, v10, [B

    .line 24
    .local v0, "buffer":[B
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 25
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 27
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 33
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    return-object v8

    .line 30
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 38
    .local v7, "messageDigest":[B
    invoke-static {v7}, Lcn/nubia/upgrade/util/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 41
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "messageDigest":[B
    :cond_1
    const-string v9, "MD5"

    const-string v10, "md5 null"

    invoke-static {v9, v10}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 70
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    sget-object v3, Lcn/nubia/upgrade/util/MD5Util;->HEX_DIGITS:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    sget-object v3, Lcn/nubia/upgrade/util/MD5Util;->HEX_DIGITS:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
