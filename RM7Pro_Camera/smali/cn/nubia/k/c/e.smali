.class public Lcn/nubia/k/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z
    .locals 5

    const-string v0, "Exception:IOException2"

    const/4 v1, 0x0

    const-string v2, "FileUtils"

    if-eqz p2, :cond_6

    .line 76
    array-length v3, p2

    if-nez v3, :cond_0

    goto :goto_5

    :cond_0
    if-eqz p1, :cond_5

    if-nez p0, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 89
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 101
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 95
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "Exception:IOException1"

    .line 96
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    .line 101
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 91
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p1, "Exception:FileNotFoundException"

    .line 92
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    .line 101
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_1
    return v1

    :goto_2
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    const-string p0, "uri is null"

    .line 81
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :goto_5
    const-string p0, "data is null"

    .line 77
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static a(Ljava/lang/String;[B)Z
    .locals 7

    const-string v0, "Exception:IOException2"

    const-string v1, "FileUtils"

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 33
    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p0, :cond_1

    return v2

    .line 40
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 50
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v5

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 58
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "Exception:IOException1"

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 64
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_4
    move-exception p0

    .line 53
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p0, "Exception:FileNotFoundException"

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_4

    .line 64
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_5
    :goto_4
    throw p0

    :cond_6
    :goto_5
    return v2

    :cond_7
    :goto_6
    const-string p0, "data is null"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 2

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    .line 157
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 158
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FileUtils"

    const-string v1, "read uri fail"

    .line 160
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 118
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 125
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 129
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 130
    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 143
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_4

    :catch_3
    move-exception v2

    move-object p0, v0

    goto :goto_1

    :catch_4
    move-exception v2

    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_4

    :catch_5
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 136
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    .line 140
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz p0, :cond_4

    .line 143
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_6
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 134
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    .line 140
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 143
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    :goto_3
    return-object v0

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    .line 140
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catch_7
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz p0, :cond_6

    .line 143
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    .line 146
    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    :cond_6
    :goto_7
    throw v0

    :cond_7
    :goto_8
    return-object v0
.end method
