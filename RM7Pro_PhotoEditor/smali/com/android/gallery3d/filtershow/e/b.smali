.class public final Lcom/android/gallery3d/filtershow/e/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lc/b/a/c/h;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/e/b;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/e/b;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lc/b/a/c/c;

    invoke-direct {v0}, Lc/b/a/c/c;-><init>()V

    invoke-virtual {v0, p0}, Lc/b/a/c/c;->B(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/b/a/c/c;->h()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ImageLoader"

    const-string v1, "Failed to read EXIF tags"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p1
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10

    const-string v0, "Failed to close InputStream"

    const-string v1, "ImageLoader"

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "orientation"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    invoke-static {v4}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    return v3

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-static {v4}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    return p0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v2}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    throw p0

    :catch_0
    move-object v4, v2

    :catch_1
    :cond_3
    invoke-static {v4}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    new-instance v4, Lc/b/a/c/c;

    invoke-direct {v4}, Lc/b/a/c/c;-><init>()V

    :try_start_2
    const-string v5, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/e/b;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "image/jpeg"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lc/b/a/c/c;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v4, v2}, Lc/b/a/c/c;->A(Ljava/io/InputStream;)V

    :goto_2
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/e/b;->v(Lc/b/a/c/c;)I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    :try_start_4
    const-string p1, "Failed to read EXIF orientation"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return v3

    :goto_5
    if-eqz v2, :cond_8

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_6
    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getOrientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static f(Landroid/content/Context;Lcom/android/gallery3d/filtershow/e/a;Landroid/net/Uri;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, p4, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_0
    if-le v2, p4, :cond_0

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v2, v1

    goto :goto_0

    :cond_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/gallery3d/filtershow/e/b;->s(Landroid/content/Context;Lcom/android/gallery3d/filtershow/e/a;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lc/a/a/d;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->a0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lc/b/a/d/a;->a(Ljava/io/InputStream;)Lc/a/a/d;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_0
    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-object p0, v0

    :catch_1
    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p1, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBitmap, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uri.getAuthority() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-object p0, v1

    :catch_3
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FileNotFoundException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_2
    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v3, :cond_1

    move v0, v4

    goto :goto_3

    :cond_1
    move v0, v5

    :goto_3
    const-string v3, "_data"

    const-string v6, "mime_type"

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    const-string v10, "_id=?"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v11, v4, [Ljava/lang/String;

    aput-object v0, v11, v5

    const/4 v12, 0x0

    move-object v9, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    aget-object v0, v3, v5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v7, ""

    if-eqz v6, :cond_2

    :try_start_6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aget-object v0, v3, v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :cond_2
    move-object v0, v7

    goto :goto_5

    :cond_3
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v4, :cond_5

    const-string p2, "PhotoEditor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WRONG!  ImageLoader loadBitmap query no recode for:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    :try_start_9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v7, v5, v3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v3

    if-lez v3, :cond_6

    invoke-static {v7}, Lcom/android/gallery3d/filtershow/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    invoke-static {v7, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v3, "image/png"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :cond_8
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p2

    :catch_4
    move-exception p2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p2

    move-object p0, v1

    :goto_6
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_7
    return-object v1

    :catchall_3
    move-exception p1

    move-object v1, p0

    :goto_8
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to loadBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/filtershow/e/b;->h(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    move p2, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/e/b;->n(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 p2, p2, 0x2

    move-object v3, v1

    goto :goto_0

    :cond_1
    throw v3

    :cond_2
    return-object v3
.end method

.method public static k(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 4

    if-lez p2, :cond_6

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-static {p1, p0}, Lcom/android/gallery3d/filtershow/e/b;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-lez p3, :cond_5

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    :cond_2
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    :goto_0
    const/4 v2, 0x1

    :goto_1
    div-int/lit8 v3, p4, 0x2

    if-lt v3, p2, :cond_3

    shr-int/lit8 p4, p4, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_5

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    div-int/2addr p3, v2

    if-gtz p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, p0, v2, p2}, Lcom/android/gallery3d/filtershow/e/b;->p(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-lez p1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/4 v1, 0x0

    if-lez v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-le p3, p1, :cond_2

    ushr-int/lit8 p3, p3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v2, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/2addr p1, v2

    if-gtz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v2}, Lcom/android/gallery3d/filtershow/e/b;->o(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    new-instance p0, Lcom/android/gallery3d/dng/a;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/dng/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/dng/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/dng/a;->c()I

    move-result p4

    invoke-virtual {p0}, Lcom/android/gallery3d/dng/a;->b()I

    move-result p0

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p3, p2, p5}, Lcom/android/gallery3d/filtershow/e/b;->l(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p0, p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static n(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/filtershow/e/b;->h(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/e/b;->n(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p3, p1}, Lc/b/a/b/a;->c(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/e/b;->j(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/e/b;->d(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/gallery3d/filtershow/e/b;->t(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p4, v0}, Lcom/android/gallery3d/filtershow/e/b;->k(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p3}, Lcom/android/gallery3d/filtershow/e/b;->t(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static s(Landroid/content/Context;Lcom/android/gallery3d/filtershow/e/a;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "FileNotFoundException for "

    const-string v1, "ImageLoader"

    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, p4, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, p4, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v5, v8, v9}, Lcom/android/gallery3d/filtershow/e/a;->c(III)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eq p3, v5, :cond_2

    invoke-virtual {p1, v5}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return-object p3

    :catch_0
    move-exception p1

    move p2, v2

    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto/16 :goto_5

    :catch_1
    move-exception p1

    move p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_4
    move-exception p1

    move p2, v2

    move-object p0, v3

    :goto_0
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exc, image decoded "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bounds: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " exc: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    move-exception p1

    move-object p0, v3

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_6
    move-exception p1

    move-object p0, v3

    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_4
    invoke-static {p0}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return-object v3

    :goto_5
    invoke-static {v3}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static t(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_1
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v5, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    :pswitch_1
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v5, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :pswitch_2
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v5, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    :pswitch_3
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    invoke-virtual {v5, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_0
    :pswitch_4
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    :pswitch_5
    const/high16 p1, 0x43340000    # 180.0f

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object p0
.end method

.method private static v(Lc/b/a/c/c;)I
    .locals 1

    sget v0, Lc/b/a/c/c;->n:I

    invoke-virtual {p0, v0}, Lc/b/a/c/c;->r(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->a0()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->a0()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lc/b/a/d/a;->a(Ljava/io/InputStream;)Lc/a/a/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/a/a/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :cond_0
    :try_start_1
    const-string v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string v3, "GPano:CroppedAreaImageWidthPixels"

    const-string v4, "GPano:FullPanoWidthPixels"

    invoke-interface {p0, v2, v3}, Lc/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lc/a/a/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :cond_1
    :try_start_2
    invoke-interface {p0, v2, v4}, Lc/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lc/a/a/c; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :cond_2
    :try_start_3
    invoke-interface {p0, v2, v3}, Lc/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v4}, Lc/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lc/a/a/c; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return p0

    :cond_3
    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :cond_4
    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0

    :catch_1
    invoke-static {v1}, Lc/b/a/b/b;->c(Ljava/io/Closeable;)V

    return v0
.end method
