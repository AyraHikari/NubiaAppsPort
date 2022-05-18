.class public Lcn/nubia/gallery3d/data/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z
    .locals 1

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/data/DownloadUtils;->dump(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 75
    :goto_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    :try_start_2
    const-string p2, "DownloadService"

    const-string v0, "fail to download"

    .line 72
    invoke-static {p2, v0, p0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 p0, 0x0

    goto :goto_0

    :catchall_2
    move-exception p0

    .line 75
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 76
    throw p0
.end method

.method public static dump(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 51
    new-instance v5, Lcn/nubia/gallery3d/data/DownloadUtils$1;

    invoke-direct {v5, v4}, Lcn/nubia/gallery3d/data/DownloadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v5}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    :goto_0
    if-lez v3, :cond_1

    .line 57
    invoke-interface {p0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 61
    invoke-interface {p0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 62
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void
.end method

.method public static requestDownload(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-static {p0, p1, v1}, Lcn/nubia/gallery3d/data/DownloadUtils;->download(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-object v0, v1

    :catchall_1
    const/4 p0, 0x0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p0
.end method
