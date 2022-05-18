.class public Lcom/hpplay/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/util/zip/ZipOutputStream;Ljava/io/BufferedOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 166
    array-length v0, v1

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/util/zip/ZipEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 171
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/hpplay/common/utils/FileUtil;->compress(Ljava/util/zip/ZipOutputStream;Ljava/io/BufferedOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_2
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 177
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 183
    invoke-virtual {p1, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_3
    if-eqz v1, :cond_4

    .line 187
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    :try_start_3
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 188
    :catch_2
    move-exception v1

    .line 189
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .prologue
    .line 208
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 216
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 217
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 223
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 224
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 225
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 226
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 227
    return-void
.end method

.method public static deleteAllChildFile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_1

    .line 251
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 252
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/hpplay/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v2

    .line 253
    if-nez v2, :cond_0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 237
    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0}, Lcom/hpplay/common/utils/FileUtil;->deleteAllChildFile(Ljava/io/File;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 243
    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hpplay/common/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static file2Bytes(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 24
    const-string v0, "FileUtil"

    const-string v1, "file2String"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string v0, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 33
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 35
    new-array v0, v0, [B

    .line 36
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    if-eqz v2, :cond_1

    .line 43
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 49
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 39
    :goto_2
    :try_start_3
    const-string v3, "FileUtil"

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    if-eqz v2, :cond_3

    .line 43
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 46
    goto :goto_1

    .line 44
    :catch_2
    move-exception v0

    .line 45
    const-string v2, "FileUtil"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-object v0, v1

    .line 46
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    .line 43
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 46
    :cond_2
    :goto_4
    throw v0

    .line 44
    :catch_3
    move-exception v1

    .line 45
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4

    .line 41
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 38
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static file2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 53
    const-string v0, "FileUtil"

    const-string v1, "file2String"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    const-string v1, ""

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v0, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const/4 v3, 0x0

    .line 62
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 64
    new-array v3, v0, [B

    .line 65
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 66
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-eqz v2, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 78
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 68
    :goto_2
    :try_start_3
    const-string v3, "FileUtil"

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    if-eqz v2, :cond_3

    .line 72
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 75
    goto :goto_1

    .line 73
    :catch_2
    move-exception v0

    .line 74
    const-string v2, "FileUtil"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-object v0, v1

    .line 75
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    .line 72
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 75
    :cond_2
    :goto_4
    throw v0

    .line 73
    :catch_3
    move-exception v1

    .line 74
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 67
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getAvailSize(Ljava/lang/String;)J
    .locals 5

    .prologue
    const/16 v4, 0x12

    .line 103
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_0

    .line 107
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    .line 113
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_1

    .line 114
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 119
    :goto_1
    mul-long/2addr v0, v2

    .line 120
    return-wide v0

    .line 109
    :cond_0
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    goto :goto_1
.end method

.method public static string2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 86
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static zipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 124
    .line 128
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v0, v2}, Lcom/hpplay/common/utils/FileUtil;->compress(Ljava/util/zip/ZipOutputStream;Ljava/io/BufferedOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 136
    if-nez v4, :cond_0

    .line 138
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 145
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 150
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 152
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 158
    :cond_2
    :goto_2
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v2, "FileUtil"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 153
    :catch_2
    move-exception v0

    .line 154
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 133
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 134
    :goto_3
    :try_start_7
    const-string v4, "FileUtil"

    invoke-static {v4, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 136
    if-nez v3, :cond_3

    .line 138
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 143
    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 145
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 150
    :cond_4
    :goto_5
    if-eqz v2, :cond_2

    .line 152
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    .line 153
    :catch_4
    move-exception v0

    .line 154
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 139
    :catch_5
    move-exception v0

    .line 140
    const-string v3, "FileUtil"

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4

    .line 146
    :catch_6
    move-exception v0

    .line 147
    const-string v1, "FileUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    .line 136
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_6
    if-nez v4, :cond_5

    .line 138
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 143
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 145
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 150
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 152
    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 155
    :cond_7
    :goto_9
    throw v0

    .line 139
    :catch_7
    move-exception v1

    .line 140
    const-string v4, "FileUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_7

    .line 146
    :catch_8
    move-exception v1

    .line 147
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_8

    .line 153
    :catch_9
    move-exception v1

    .line 154
    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_9

    .line 136
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_6

    .line 133
    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_3

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_3
.end method
