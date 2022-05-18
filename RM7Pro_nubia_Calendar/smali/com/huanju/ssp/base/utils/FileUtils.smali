.class public Lcom/huanju/ssp/base/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final CACHE_DIR:Ljava/lang/String; = "cache"

.field public static final DOWNLOAD_DIR:Ljava/lang/String; = "download"

.field public static final ICON_DIR:Ljava/lang/String; = "icon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chmod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 288
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 290
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 260
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs close([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "io"    # [Ljava/io/Closeable;

    .prologue
    .line 243
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 244
    .local v0, "closeable":Ljava/io/Closeable;
    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 252
    .end local v0    # "closeable":Ljava/io/Closeable;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 13
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "des"    # Ljava/lang/String;
    .param p2, "delete"    # Z

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 498
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 527
    :goto_0
    return v9

    .line 502
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v2, "desFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 504
    .local v5, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 506
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_2
    new-array v0, v11, [B

    .line 509
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 510
    .local v1, "count":I
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-eq v1, v11, :cond_1

    .line 511
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 512
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 514
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v3

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 515
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    new-array v11, v12, [Ljava/io/Closeable;

    aput-object v5, v11, v9

    aput-object v7, v11, v10

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :cond_1
    new-array v11, v12, [Ljava/io/Closeable;

    aput-object v6, v11, v9

    aput-object v8, v11, v10

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 520
    if-eqz p2, :cond_2

    .line 521
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 522
    const-string v9, "\u6587\u4ef6\u5220\u9664\u6210\u529f"

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_2
    :goto_3
    move v9, v10

    .line 527
    goto :goto_0

    .line 518
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v11

    :goto_4
    new-array v12, v12, [Ljava/io/Closeable;

    aput-object v5, v12, v9

    aput-object v7, v12, v10

    invoke-static {v12}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 519
    throw v11

    .line 524
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :cond_3
    const-string v9, "\u6587\u4ef6\u5220\u9664\u5931\u8d25"

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 518
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 514
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 11
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "deleteSrc"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v7

    .line 170
    :cond_1
    const/4 v3, 0x0

    .line 171
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 173
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 176
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 177
    .local v2, "i":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 178
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 184
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 185
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v5, v9, v7

    aput-object v3, v9, v8

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v9

    if-nez v9, :cond_3

    .line 188
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v6, v9, v7

    aput-object v4, v9, v8

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v6, v9, v7

    aput-object v4, v9, v8

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move v7, v8

    .line 190
    goto :goto_0

    .line 188
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    :goto_3
    new-array v10, v10, [Ljava/io/Closeable;

    aput-object v5, v10, v7

    aput-object v3, v10, v8

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 189
    throw v9

    .line 188
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 184
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    if-nez p0, :cond_0

    .line 555
    :goto_0
    return v4

    .line 543
    :cond_0
    const/4 v2, 0x0

    .line 545
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v3, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 547
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 548
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 549
    .local v1, "i":I
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 550
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 553
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :goto_2
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v4

    aput-object p0, v7, v5

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 554
    throw v6

    .line 553
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "out":Ljava/io/RandomAccessFile;
    :cond_1
    new-array v6, v8, [Ljava/io/Closeable;

    aput-object v3, v6, v4

    aput-object p0, v6, v5

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move v4, v5

    .line 555
    goto :goto_0

    .line 553
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "deleteSrc"    # Z

    .prologue
    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "destFile":Ljava/io/File;
    invoke-static {v1, v0, p2}, Lcom/huanju/ssp/base/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v2

    return v2
.end method

.method public static createDirs(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const-string v3, "\u6587\u4ef6\u5220\u9664\u6210\u529f"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   \u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 151
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return v1

    .line 136
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    const-string v3, "\u6587\u4ef6\u5220\u9664\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   \u5931\u8d25"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    move v1, v2

    .line 145
    goto :goto_1

    .end local v0    # "file":Ljava/io/File;
    :cond_4
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method public static getByteFromStream(Ljava/io/InputStream;)[B
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [B

    .line 225
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 226
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 229
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v4, 0x0

    .line 233
    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v3, v5, v6

    aput-object p0, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 233
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_0
    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v3, v4, v6

    aput-object p0, v4, v7

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 235
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_1

    .line 233
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catchall_0
    move-exception v4

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v3, v5, v6

    aput-object p0, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 234
    throw v4
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->isSDCardAvailable()Z

    move-result v0

    const-string v1, "cache"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/utils/FileUtils;->getDir(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDir(ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "isSDCardAvailable"    # Z
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 69
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/FileUtils;->createDirs(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   \u521b\u5efaSD\u5361\u8def\u5f84  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 88
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 71
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   \u83b7\u53d6SD\u5361\u8def\u5f84\u5931\u8d25  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 79
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz p0, :cond_1

    .line 80
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   \u5728SD\u4e0a\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    invoke-static {v3, p1}, Lcom/huanju/ssp/base/utils/FileUtils;->getDir(ZLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getDownloadDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->isSDCardAvailable()Z

    move-result v0

    const-string v1, "download"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/utils/FileUtils;->getDir(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 559
    const/4 v8, 0x0

    .line 561
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 563
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    .line 564
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 563
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 565
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 566
    .local v11, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v11, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 567
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/KeyUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 568
    .local v10, "md5str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileMD5String md5str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 573
    new-array v1, v13, [Ljava/io/Closeable;

    aput-object v9, v1, v12

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v8, v9

    .line 575
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v10    # "md5str":Ljava/lang/String;
    .end local v11    # "messagedigest":Ljava/security/MessageDigest;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :goto_0
    return-object v10

    .line 570
    :catch_0
    move-exception v7

    .line 571
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    new-array v1, v13, [Ljava/io/Closeable;

    aput-object v8, v1, v12

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 573
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    new-array v2, v13, [Ljava/io/Closeable;

    aput-object v8, v2, v12

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 574
    throw v1

    .line 573
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 570
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getIconDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->isSDCardAvailable()Z

    move-result v0

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/utils/FileUtils;->getDir(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImgPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 579
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 580
    .local v1, "outputDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 583
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "imgPath":Ljava/lang/String;
    return-object v0
.end method

.method public static getString4Asset(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 194
    const/4 v3, 0x0

    .line 196
    .local v3, "tBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 197
    .local v1, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    .local v4, "tBufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v5, "tStringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 200
    .local v2, "sTempOneLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 204
    .end local v2    # "sTempOneLine":Ljava/lang/String;
    .end local v5    # "tStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 205
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "tBufferedReader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 209
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 203
    .end local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "sTempOneLine":Ljava/lang/String;
    .restart local v4    # "tBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "tStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 207
    new-array v7, v9, [Ljava/io/Closeable;

    aput-object v4, v7, v8

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v3, v4

    .line 203
    .end local v4    # "tBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 207
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "sTempOneLine":Ljava/lang/String;
    .end local v5    # "tStringBuffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v6

    :goto_3
    new-array v7, v9, [Ljava/io/Closeable;

    aput-object v3, v7, v8

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 208
    throw v6

    .line 207
    .end local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v4    # "tBufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "tBufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "tBufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 204
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isSDCardAvailable()Z
    .locals 2

    .prologue
    .line 38
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWriteable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 272
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 275
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 473
    const/4 v4, 0x0

    .line 491
    :goto_0
    return-object v4

    .line 475
    :cond_0
    const/4 v4, 0x0

    .line 476
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 477
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 489
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 482
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 484
    .local v6, "p":Ljava/util/Properties;
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 485
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v3, v7, v9

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 490
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 486
    .end local v6    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 489
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    new-array v8, v8, [Ljava/io/Closeable;

    aput-object v2, v8, v9

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 490
    throw v7

    .line 489
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 486
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static readProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v5, v6

    .line 435
    :goto_0
    return-object v5

    .line 419
    :cond_1
    const/4 v5, 0x0

    .line 420
    .local v5, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 421
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 433
    new-array v7, v9, [Ljava/io/Closeable;

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v5, v6

    .line 424
    goto :goto_0

    .line 426
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 428
    .local v4, "p":Ljava/util/Properties;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 429
    invoke-virtual {v4, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 433
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v2, v3

    .line 434
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 430
    .end local v4    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    new-array v7, v9, [Ljava/io/Closeable;

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 434
    throw v6

    .line 433
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 430
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "recreate"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 305
    const/4 v6, 0x0

    .line 306
    .local v6, "res":Z
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v3, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 309
    .local v4, "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 324
    new-array v8, v9, [Ljava/io/Closeable;

    aput-object v4, v8, v10

    aput-object p0, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move v7, v6

    .line 326
    .end local v6    # "res":Z
    .local v7, "res":I
    :goto_0
    return v7

    .line 312
    .end local v7    # "res":I
    .restart local v6    # "res":Z
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->createDirs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 313
    const/4 v1, -0x1

    .line 314
    .local v1, "count":I
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 315
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 317
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 321
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 322
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    new-array v8, v9, [Ljava/io/Closeable;

    aput-object v4, v8, v10

    aput-object p0, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    move v7, v6

    .line 326
    .restart local v7    # "res":I
    goto :goto_0

    .line 319
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "res":I
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v6, 0x1

    move-object v4, v5

    .line 324
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    new-array v8, v9, [Ljava/io/Closeable;

    aput-object v4, v8, v10

    aput-object p0, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v8

    :goto_4
    new-array v9, v9, [Ljava/io/Closeable;

    aput-object v4, v9, v10

    aput-object p0, v9, v11

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 325
    throw v8

    .line 324
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 321
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 373
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/huanju/ssp/base/utils/FileUtils;->writeFile([BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 377
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeFile([BLjava/lang/String;Z)Z
    .locals 10
    .param p0, "content"    # [B
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    const/4 v4, 0x0

    .line 339
    .local v4, "res":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 342
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    if-nez p2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 358
    :cond_0
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move v5, v4

    .line 360
    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_0
    return v5

    .line 346
    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 358
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move v5, v4

    .line 347
    .restart local v5    # "res":I
    goto :goto_0

    .line 349
    .end local v5    # "res":I
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 350
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 352
    invoke-virtual {v3, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    const/4 v4, 0x1

    move-object v2, v3

    .line 358
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    :goto_1
    move v5, v4

    .line 360
    .restart local v5    # "res":I
    goto :goto_0

    .line 355
    .end local v5    # "res":I
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    new-array v6, v9, [Ljava/io/Closeable;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    new-array v7, v9, [Ljava/io/Closeable;

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 359
    throw v6

    .line 358
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 355
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static writeMap(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 442
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v2, 0x0

    .line 446
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 447
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 463
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 452
    :cond_3
    :try_start_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 453
    .local v6, "p":Ljava/util/Properties;
    if-eqz p2, :cond_4

    .line 454
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 457
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :try_start_3
    invoke-virtual {v6, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 458
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v6, v5, p3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 463
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    aput-object v5, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v4, v5

    .line 464
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 460
    .end local v6    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 463
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    new-array v8, v8, [Ljava/io/Closeable;

    aput-object v2, v8, v9

    aput-object v4, v8, v10

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 464
    throw v7

    .line 463
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "p":Ljava/util/Properties;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 460
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static writeProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v2, 0x0

    .line 393
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 394
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 408
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 399
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 401
    .local v6, "p":Ljava/util/Properties;
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 402
    invoke-virtual {v6, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6, v5, p3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v3, v7, v9

    aput-object v5, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 409
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 405
    .end local v6    # "p":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    new-array v8, v8, [Ljava/io/Closeable;

    aput-object v2, v8, v9

    aput-object v4, v8, v10

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 409
    throw v7

    .line 408
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "p":Ljava/util/Properties;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 405
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "p":Ljava/util/Properties;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "p":Ljava/util/Properties;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
