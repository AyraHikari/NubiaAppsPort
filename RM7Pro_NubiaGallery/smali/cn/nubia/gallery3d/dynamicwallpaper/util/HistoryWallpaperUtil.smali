.class public Lcn/nubia/gallery3d/dynamicwallpaper/util/HistoryWallpaperUtil;
.super Ljava/lang/Object;
.source "HistoryWallpaperUtil.java"


# static fields
.field private static final HISTORY_DIR_NAME:Ljava/lang/String; = "Histories"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyVideo(Landroid/os/ParcelFileDescriptor;Ljava/io/FileInputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x19000

    :try_start_1
    new-array v1, v1, [B

    .line 40
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 41
    invoke-virtual {v2, v1, v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 42
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 53
    :cond_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 45
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "HistoryWallpaperUtil"

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy Vidio Error !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_4
    if-eqz p0, :cond_5

    .line 56
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    return v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz p1, :cond_6

    .line 50
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    .line 53
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_7
    if-eqz p0, :cond_8

    .line 56
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 58
    :cond_8
    throw v0
.end method

.method public static CreateVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 20
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    .line 22
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 23
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_added"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_modified"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "mime_type"

    const-string p2, "video/mp4"

    .line 27
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Histories"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
