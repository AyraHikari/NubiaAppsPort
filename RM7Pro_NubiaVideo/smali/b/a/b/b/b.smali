.class public Lb/a/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b/b$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lb/a/b/b/a;
    .locals 2

    .line 1
    new-instance p3, Lb/a/b/b/a;

    invoke-direct {p3}, Lb/a/b/b/a;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lb/a/b/b/b;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lb/a/b/b/a;->d:Ljava/lang/String;

    goto :goto_3

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file:///storage"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    const-string v0, "DCIM/Camera/Video"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    goto :goto_2

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    .line 10
    :goto_2
    iget-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_4
    iget-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lb/a/b/b/a;->d:Ljava/lang/String;

    .line 12
    :goto_3
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/sql/Date;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 14
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lb/a/b/b/a;->b:Ljava/lang/String;

    .line 15
    new-instance p0, Ljava/io/File;

    iget-object p1, p3, Lb/a/b/b/a;->c:Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lb/a/b/b/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, p3, Lb/a/b/b/a;->a:Ljava/io/File;

    return-object p3
.end method

.method private static b(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "_data"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lb/a/b/b/b$a;

    invoke-direct {v2, v0}, Lb/a/b/b/b$a;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lb/a/b/b/b;->e(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lb/a/b/b/b$c;)V

    const/4 p0, 0x0

    .line 2
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static c(Lb/a/b/b/a;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 2
    div-long v2, v0, v2

    .line 3
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 4
    iget-object v5, p0, Lb/a/b/b/a;->b:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Lb/a/b/b/a;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "video/mp4"

    .line 6
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "date_modified"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iget-object v0, p0, Lb/a/b/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lb/a/b/b/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_size"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    iget-object p0, p0, Lb/a/b/b/a;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/b/b/b;->f(Ljava/lang/String;)I

    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "duration"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "latitude"

    const-string v0, "longitude"

    const-string v2, "resolution"

    .line 14
    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Lb/a/b/b/b$b;

    invoke-direct {v0, v4}, Lb/a/b/b/b$b;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p1, p2, p0, v0}, Lb/a/b/b/b;->e(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lb/a/b/b/b$c;)V

    .line 16
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lb/a/b/b/a;Landroid/content/ContentResolver;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Ljava/io/File;

    iget-object p1, p1, Lb/a/b/b/a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6
    invoke-static {v0, p2}, Lb/a/b/b/b;->g(Ljava/io/File;Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lb/a/b/b/b$c;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p3, v6}, Lb/a/b/b/b$c;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    .line 4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_1
    throw p0

    :catch_0
    if-eqz v6, :cond_2

    .line 6
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 3
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p0
.end method

.method private static g(Ljava/io/File;Landroid/content/ContentResolver;)I
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/b/b/b;->f(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x3e8

    .line 7
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
