.class public Lcn/nubia/cloud/utils/DigestSignUtil;
.super Ljava/lang/Object;
.source "DigestSignUtil.java"


# static fields
.field private static sHexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/cloud/utils/DigestSignUtil;->sHexChar:[C

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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genLittleFileSign(Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 59
    const-string v12, ""

    .line 60
    .local v12, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 62
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v9    # "in":Ljava/io/FileInputStream;
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 66
    .local v7, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 67
    .local v11, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v11, v7}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 68
    new-instance v6, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 69
    .local v6, "bi":Ljava/math/BigInteger;
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 73
    if-eqz v10, :cond_2

    .line 75
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 81
    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v11    # "md5":Ljava/security/MessageDigest;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v12

    .line 76
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "bi":Ljava/math/BigInteger;
    .restart local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 77
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 78
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 70
    .end local v6    # "bi":Ljava/math/BigInteger;
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "md5":Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    :goto_1
    move-object v8, v0

    .line 71
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    if-eqz v9, :cond_0

    .line 75
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 76
    :catch_2
    move-exception v8

    .line 77
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_1

    .line 75
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 78
    :cond_1
    :goto_4
    throw v0

    .line 76
    :catch_3
    move-exception v8

    .line 77
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 70
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    :goto_5
    move-object v8, v0

    goto :goto_2

    .line 73
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 70
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "bi":Ljava/math/BigInteger;
    .restart local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "md5":Ljava/security/MessageDigest;
    :cond_2
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static genSign(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 23
    const/4 v3, 0x0

    .line 25
    .local v3, "localInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v3    # "localInputStream":Ljava/io/FileInputStream;
    .local v4, "localInputStream":Ljava/io/FileInputStream;
    const/high16 v6, 0x40000

    :try_start_1
    new-array v0, v6, [B

    .line 27
    .local v0, "arrayOfByte":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 28
    .local v5, "localMessageDigest":Ljava/security/MessageDigest;
    const/4 v2, 0x0

    .line 29
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 30
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 33
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "i":I
    .end local v5    # "localMessageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 34
    .end local v4    # "localInputStream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "localInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    if-eqz v3, :cond_0

    .line 40
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 46
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 32
    .end local v3    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "arrayOfByte":[B
    .restart local v2    # "i":I
    .restart local v4    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "localMessageDigest":Ljava/security/MessageDigest;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/cloud/utils/DigestSignUtil;->toHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 38
    if-eqz v4, :cond_2

    .line 40
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    move-object v3, v4

    .line 43
    .end local v4    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "localInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 41
    .end local v3    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "localInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 41
    .end local v0    # "arrayOfByte":[B
    .end local v2    # "i":I
    .end local v4    # "localInputStream":Ljava/io/FileInputStream;
    .end local v5    # "localMessageDigest":Ljava/security/MessageDigest;
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "localInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 35
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 36
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 38
    if-eqz v3, :cond_0

    .line 40
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 41
    :catch_4
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_3

    .line 40
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 43
    :cond_3
    :goto_7
    throw v6

    .line 41
    :catch_5
    move-exception v1

    .line 42
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "localInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "localInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 35
    .end local v3    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "localInputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "localInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "localInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 33
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static genSign(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 86
    const-string v7, ""

    .line 95
    :goto_0
    return-object v7

    .line 88
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 89
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 90
    .local v4, "paramKey":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v5, "paramStr":Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 93
    .local v3, "param":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v3    # "param":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/cloud/utils/DigestSignUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 101
    .local v7, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 103
    .local v3, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 105
    .local v1, "bb":B
    and-int/lit16 v8, v1, 0xff

    const/16 v9, 0x10

    if-ge v8, v9, :cond_0

    .line 106
    const/16 v8, 0x30

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "bb":B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 114
    .end local v0    # "arr$":[B
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "bytes":[B
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "md5":Ljava/security/MessageDigest;
    :goto_1
    return-object v8

    .line 111
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 114
    const-string v8, ""

    goto :goto_1
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 52
    sget-object v2, Lcn/nubia/cloud/utils/DigestSignUtil;->sHexChar:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    sget-object v2, Lcn/nubia/cloud/utils/DigestSignUtil;->sHexChar:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
