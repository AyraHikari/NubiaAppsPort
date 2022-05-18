.class public Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;


# static fields
.field private static final CACHE_EXCEED_TIME:J = 0x240c8400L

.field private static final DISK_CACHE_SIZE:J = 0x3200000L


# instance fields
.field private mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getIconDir()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "iconDir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "iconDirs":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->deleteCache(Ljava/io/File;)V

    .line 28
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0x3200000

    invoke-static {v3, v4, v5, v6, v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "iconDir":Ljava/lang/String;
    .end local v2    # "iconDirs":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "iconDirs":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0x3200000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "iconDirs":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteCache(Ljava/io/File;)V
    .locals 6
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 49
    if-nez p1, :cond_1

    .line 50
    const-string v2, "\u4f20\u5165\u6587\u4ef6\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 56
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_2

    .line 57
    const-string v2, "files == null"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->deleteCache(Ljava/io/File;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string v2, "\u5220\u9664\u56fe\u7247\u7f13\u5b58\u6210\u529f"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v2, "\u5220\u9664\u56fe\u7247\u7f13\u5b58\u5931\u8d25"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public getCache(Ljava/lang/String;)[B
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    if-nez v4, :cond_0

    move-object v4, v5

    .line 94
    :goto_0
    return-object v4

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 84
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;

    move-result-object v3

    .line 85
    .local v3, "snapshot":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;
    if-eqz v3, :cond_1

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v2, v0

    .line 87
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/FileUtils;->getByteFromStream(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 92
    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    new-array v4, v8, [Ljava/io/Closeable;

    aput-object v2, v4, v7

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .end local v3    # "snapshot":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;
    :goto_1
    move-object v4, v5

    .line 94
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    new-array v4, v8, [Ljava/io/Closeable;

    aput-object v2, v4, v7

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    new-array v5, v8, [Ljava/io/Closeable;

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 93
    throw v4
.end method

.method public putCache(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    if-nez v4, :cond_0

    .line 126
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 105
    .local v2, "edit":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    const/4 v3, 0x0

    .line 107
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 110
    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->commit()V

    .line 112
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->mDiskLruCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-virtual {v4}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 117
    :try_start_1
    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    new-array v4, v7, [Ljava/io/Closeable;

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    new-array v5, v7, [Ljava/io/Closeable;

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 125
    throw v4
.end method
