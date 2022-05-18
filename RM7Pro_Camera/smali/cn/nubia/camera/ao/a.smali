.class public Lcn/nubia/camera/ao/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ao/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcn/nubia/camera/ao/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/nubia/camera/ao/a$a;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/camera/ao/a;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcn/nubia/camera/ao/a;->b:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lcn/nubia/camera/ao/a;->c:Lcn/nubia/camera/ao/a$a;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 8

    const-string v0, "CubeParseThread"

    const-string v1, "_display_name"

    .line 91
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v2, p0, Lcn/nubia/camera/ao/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ao/a;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 96
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 97
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".cube"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v1

    :goto_0
    :try_start_2
    const-string v4, "SQLiteException in thumbnail"

    .line 103
    invoke-static {v0, v4, v3}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_2

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v2, v1

    :goto_1
    const-string v4, "SQLiteDiskIOException in thumbnail"

    .line 101
    invoke-static {v0, v4, v3}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 106
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, ""

    const-string v1, "parse fail"

    const-string v2, "CubeParseThread"

    const/4 v3, 0x0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/ao/a;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 44
    iget-object v4, p0, Lcn/nubia/camera/ao/a;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".*/"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\.cube"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse cube title "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    iget-object v5, p0, Lcn/nubia/camera/ao/a;->a:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/camera/ao/a;->b:Landroid/net/Uri;

    invoke-static {v5, v6, v0}, Lcn/nubia/camera/ao/b;->a(Landroid/content/Context;Landroid/net/Uri;[I)[B

    move-result-object v5

    if-eqz v5, :cond_5

    .line 52
    array-length v6, v5

    if-nez v6, :cond_1

    goto/16 :goto_1

    .line 60
    :cond_1
    aget v6, v0, v3

    const/4 v7, 0x1

    aget v8, v0, v7

    mul-int/2addr v6, v8

    new-array v8, v6, [I

    move v9, v3

    move v10, v9

    :goto_0
    if-ge v9, v6, :cond_2

    .line 62
    aget-byte v11, v5, v10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v10, 0x2

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x3

    goto :goto_0

    .line 64
    :cond_2
    aget v5, v0, v3

    aget v0, v0, v7

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/camera/ao/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/cube"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 73
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v4, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 74
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/ao/a;->c:Lcn/nubia/camera/ao/a$a;

    if-eqz v0, :cond_4

    .line 76
    invoke-interface {v0, v7}, Lcn/nubia/camera/ao/a$a;->a(Z)V

    :cond_4
    return-void

    .line 53
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ao/a;->c:Lcn/nubia/camera/ao/a$a;

    if-eqz v0, :cond_6

    .line 54
    invoke-interface {v0, v3}, Lcn/nubia/camera/ao/a$a;->a(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception v0

    .line 82
    invoke-static {v2, v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 80
    invoke-static {v2, v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/ao/a;->c:Lcn/nubia/camera/ao/a$a;

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {v0, v3}, Lcn/nubia/camera/ao/a$a;->a(Z)V

    :cond_7
    return-void
.end method
