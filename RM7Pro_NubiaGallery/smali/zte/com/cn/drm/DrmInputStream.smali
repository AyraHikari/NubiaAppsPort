.class public final Lzte/com/cn/drm/DrmInputStream;
.super Ljava/io/InputStream;
.source "DrmInputStream.java"


# instance fields
.field private mNativeInputStream:J

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "drminputstream"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    .line 156
    iput-wide p1, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    return-void
.end method

.method private native nativeAvailable()I
.end method

.method private native nativeClose()V
.end method

.method private native nativeMark(I)V
.end method

.method private native nativeMarkSupport()I
.end method

.method private static native nativeOpen(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;
.end method

.method private native nativeRead([B)I
.end method

.method private native nativeReadWithOffset([BII)I
.end method

.method private native nativeReset()V
.end method

.method private native nativeSkip(J)J
.end method

.method public static open(Landroid/content/Context;Landroid/net/Uri;)Lzte/com/cn/drm/DrmInputStream;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 88
    :try_start_1
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeOpen(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p0

    :catch_1
    return-object v0
.end method

.method public static open(Ljava/io/File;)Lzte/com/cn/drm/DrmInputStream;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 39
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 44
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :catch_3
    :goto_1
    move-object p0, v0

    .line 51
    :goto_2
    :try_start_2
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeOpen(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v1, :cond_1

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-object v0, p0

    goto :goto_4

    :cond_1
    :goto_3
    if-nez p0, :cond_2

    return-object v0

    :catch_5
    :goto_4
    move-object p0, v0

    :cond_2
    return-object p0
.end method

.method public static open(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;
    .locals 1

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeOpen(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    :catch_0
    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lzte/com/cn/drm/DrmInputStream;
    .locals 3

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v1, v0

    .line 130
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    move-object p0, v0

    .line 138
    :goto_3
    :try_start_2
    invoke-static {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeOpen(Ljava/io/FileDescriptor;)Lzte/com/cn/drm/DrmInputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v1, :cond_0

    .line 140
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_4
    if-nez p0, :cond_1

    return-object v0

    :catch_5
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    .line 149
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeAvailable()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 197
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeClose()V

    .line 211
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    .line 206
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mark(I)V
    .locals 4

    .line 217
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lzte/com/cn/drm/DrmInputStream;->nativeMark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 167
    invoke-direct {p0, v0}, Lzte/com/cn/drm/DrmInputStream;->nativeRead([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_0

    const/4 v0, -0x1

    .line 169
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 171
    :try_start_1
    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 164
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lzte/com/cn/drm/DrmInputStream;->nativeRead([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 254
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File not opened."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-ltz p3, :cond_1

    if-ltz p2, :cond_1

    .line 240
    array-length v0, p1

    if-gt p2, v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/drm/DrmInputStream;->nativeReadWithOffset([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 243
    monitor-exit p0

    return p1

    .line 238
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "NonePointer exception."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File not opened."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 262
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lzte/com/cn/drm/DrmInputStream;->nativeReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File not opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    iget-wide v0, p0, Lzte/com/cn/drm/DrmInputStream;->mNativeInputStream:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, p1, p2}, Lzte/com/cn/drm/DrmInputStream;->nativeSkip(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 275
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File not opened."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
