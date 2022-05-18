.class public Lb/a/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lb/a/b/d/c;->c(Landroid/content/Context;ZLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lb/a/b/d/c;->c(Landroid/content/Context;ZLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;ZLandroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    .line 1
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lb/a/b/d/e;->p()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lb/a/b/d/e;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, v6

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 8
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 9
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    .line 11
    :goto_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    cmp-long v1, v4, v7

    if-nez v1, :cond_0

    goto :goto_2

    .line 12
    :goto_1
    throw p0

    :cond_1
    move v2, v3

    :goto_2
    if-nez v2, :cond_2

    .line 13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2
    const/4 p2, -0x1

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p0}, Landroid/database/Cursor;->isFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_3

    .line 19
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_3

    .line 22
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_3

    :cond_6
    move p1, p2

    .line 24
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eq p1, p2, :cond_7

    .line 25
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .line 1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "video_list_start_player"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
