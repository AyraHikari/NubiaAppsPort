.class public Lcn/nubia/notepad/utils/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field private static final BUFFER:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "destPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "dirs":[Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "file":Ljava/io/File;
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 30
    new-instance v2, Ljava/io/File;

    aget-object v4, v0, v3

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 38
    :cond_1
    new-instance v2, Ljava/io/File;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v1, v2

    .line 49
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .restart local v1    # "file":Ljava/io/File;
    :goto_1
    return-object v2

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 47
    :cond_3
    new-instance v2, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v1, v2

    .line 49
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "zipFileName"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v5, 0x1

    .line 116
    .local v5, "success":Z
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v7, "zis":Ljava/util/zip/ZipInputStream;
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 119
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 120
    .local v4, "readLength":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "readLength":I
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 137
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return v5

    .line 128
    .restart local v0    # "buffer":[B
    .restart local v4    # "readLength":I
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcn/nubia/notepad/utils/ZipHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 129
    .restart local v2    # "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 130
    .local v3, "os":Ljava/io/OutputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x200

    invoke-virtual {v7, v0, v8, v9}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 131
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static zip(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "fileOrDirPath"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 85
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 86
    array-length v8, v3

    if-nez v8, :cond_1

    .line 87
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 89
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 108
    .end local v3    # "files":[Ljava/io/File;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v3    # "files":[Ljava/io/File;
    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string p2, ""

    .line 92
    :goto_1
    array-length v8, v3

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v1, v3, v7

    .line 93
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1, p2}, Lcn/nubia/notepad/utils/ZipHelper;->zip(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 97
    .end local v3    # "files":[Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v4, "in":Ljava/io/FileInputStream;
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 100
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 102
    .local v0, "buf":[B
    :goto_3
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_4

    .line 103
    invoke-virtual {p1, v0, v7, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 106
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "zipFileName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v2, 0x1

    .line 57
    .local v2, "isCompressSuccess":Z
    const/4 v3, 0x0

    .line 59
    .local v3, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v0, Ljava/util/zip/CheckedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v5, v6}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    .line 61
    .local v0, "cos":Ljava/util/zip/CheckedOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v4, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    invoke-static {p0, v4, p0}, Lcn/nubia/notepad/utils/ZipHelper;->zip(Ljava/lang/String;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    if-eqz v4, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 77
    .end local v0    # "cos":Ljava/util/zip/CheckedOutputStream;
    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_0
    :goto_0
    return v2

    .line 71
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "cos":Ljava/util/zip/CheckedOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 73
    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 64
    .end local v0    # "cos":Ljava/util/zip/CheckedOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    const/4 v2, 0x0

    .line 68
    if-eqz v3, :cond_0

    .line 70
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 71
    :catch_2
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 70
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 75
    :cond_1
    :goto_3
    throw v5

    .line 71
    :catch_3
    move-exception v1

    .line 72
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "cos":Ljava/util/zip/CheckedOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .line 64
    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .end local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v3    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method
