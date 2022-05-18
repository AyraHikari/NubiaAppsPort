.class public Lcn/nubia/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 6

    const-wide/16 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    .line 79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "VideoPicture"

    const-string v4, "read length fail"

    .line 81
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "wa"

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array p2, v3, [B

    aput-byte v4, p2, v4

    .line 88
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 91
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_1
    if-lez v2, :cond_0

    .line 93
    invoke-virtual {p0, p2, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {v0, v1}, Lcn/nubia/h/b;->a(J)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "nubiaVpfile"

    const-string v0, "UTF-16BE"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    .line 106
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move v3, v4

    goto :goto_7

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v2

    :goto_2
    move-object v2, p0

    goto :goto_8

    :catch_2
    move-exception p2

    move-object p1, v2

    :goto_3
    move-object v2, p0

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object p1, v2

    goto :goto_8

    :catch_3
    move-exception p2

    move-object p1, v2

    .line 102
    :goto_4
    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 106
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 113
    :goto_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    return v3

    :catchall_3
    move-exception p2

    :goto_8
    if-eqz v2, :cond_4

    .line 106
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception p0

    goto :goto_a

    :cond_4
    :goto_9
    if-eqz p1, :cond_5

    .line 109
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    .line 113
    :goto_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_5
    :goto_b
    throw p2
.end method
