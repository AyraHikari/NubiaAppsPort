.class Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 175
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 89
    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 93
    :cond_0
    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 96
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 2

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 166
    invoke-static {p0, v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 168
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 142
    const/4 v3, 0x0

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 147
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 148
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    :goto_1
    :try_start_2
    const-string v3, "TypefaceCompatUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copying resource contents to temp file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return v0

    .line 150
    :cond_0
    const/4 v0, 0x1

    .line 155
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 151
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    .locals 1

    .prologue
    .line 135
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;

    invoke-direct {v0, p1}, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :goto_1
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 56
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 74
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    .line 75
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 77
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 78
    if-eqz v7, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v8, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v6

    .line 79
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 74
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method
