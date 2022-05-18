.class public Lcom/hpplay/sdk/source/c/a;
.super Lcom/hpplay/nanohttpd/a/a/d;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String; = "LelinkFileServer"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/hpplay/nanohttpd/a/a/d;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 3

    .prologue
    .line 375
    invoke-static {p0, p1, p2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 377
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 4

    .prologue
    .line 367
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->b:Lcom/hpplay/nanohttpd/a/a/c/d;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 368
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    .line 367
    invoke-static {v0, p2, v1, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 369
    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v0
.end method

.method private a(Ljava/util/Map;Lcom/hpplay/nanohttpd/a/a/c;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hpplay/nanohttpd/a/a/c/c;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/b/a;->f:Lcom/hpplay/nanohttpd/a/a/b/a;

    invoke-interface {p2}, Lcom/hpplay/nanohttpd/a/a/c;->e()Lcom/hpplay/nanohttpd/a/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/nanohttpd/a/a/b/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->b:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/plain"

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/c/a;->b(Ljava/util/Map;Lcom/hpplay/nanohttpd/a/a/c;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Lcom/hpplay/nanohttpd/a/a/c;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hpplay/nanohttpd/a/a/c/c;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "LelinkFileServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uri path  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "/content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 89
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v3, v4, :cond_4

    .line 92
    :try_start_0
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 97
    const-string v4, "LelinkFileServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " uri mode send stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string v0, "image/jpeg"

    .line 103
    :goto_0
    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/hpplay/sdk/source/c/a;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 114
    :cond_1
    :goto_1
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "LelinkFileServer"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/a;->m()Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mp4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    const-string v0, "video/mp4"

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/a;->m()Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_4
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/i;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 111
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/a;->m()Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/hpplay/sdk/source/c/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/c/a;->m()Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/net/Uri;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hpplay/nanohttpd/a/a/c/c;"
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    const-string v10, ""

    .line 251
    const-wide/16 v6, 0x0

    .line 252
    const-wide/16 v4, -0x1

    .line 253
    const-string v2, "range"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    if-eqz v2, :cond_c

    .line 255
    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 256
    const-string v3, "bytes="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 257
    const/16 v2, 0x2d

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 259
    if-lez v2, :cond_b

    .line 260
    const/4 v3, 0x0

    .line 261
    :try_start_1
    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 262
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    move-wide v4, v6

    :goto_0
    move-object v6, v8

    move-wide v8, v4

    move-wide v4, v2

    .line 271
    :goto_1
    :try_start_2
    const-string v2, "if-range"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    .line 275
    :goto_2
    const-string v2, "if-none-match"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    if-eqz v2, :cond_3

    const-string v7, "*"

    .line 277
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 281
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->available()I

    move-result v7

    int-to-long v12, v7

    .line 282
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-ltz v7, :cond_5

    cmp-long v7, v8, v12

    if-gez v7, :cond_5

    .line 286
    if-eqz v2, :cond_4

    .line 291
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 292
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_4
    return-object v2

    .line 264
    :catch_0
    move-exception v2

    move-object/from16 v16, v8

    move-wide v8, v6

    move-object/from16 v6, v16

    goto :goto_1

    .line 273
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    .line 277
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 294
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_a

    .line 295
    const-wide/16 v2, 0x1

    sub-long v2, v12, v2

    move-wide v6, v2

    .line 297
    :goto_5
    sub-long v2, v6, v8

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 298
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 299
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 303
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 305
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->f:Lcom/hpplay/nanohttpd/a/a/c/d;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1, v4, v5}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 307
    const-string v3, "Accept-Ranges"

    const-string v11, "bytes"

    invoke-virtual {v2, v3, v11}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "Content-Length"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "Content-Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 347
    :catch_1
    move-exception v2

    .line 348
    const-string v2, "Reading file failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/c/a;->d(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    goto/16 :goto_4

    .line 315
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    cmp-long v4, v8, v12

    if-ltz v4, :cond_6

    .line 319
    :try_start_3
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->z:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, "text/plain"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 321
    const-string v3, "Content-Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes */"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 323
    :cond_6
    if-nez v6, :cond_7

    if-eqz v2, :cond_7

    .line 327
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 328
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 329
    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    .line 335
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-static {v2, v0, v3}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 336
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 340
    :cond_8
    sget-object v2, Lcom/hpplay/nanohttpd/a/a/c/d;->b:Lcom/hpplay/nanohttpd/a/a/c/d;

    .line 341
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v4, v3

    .line 340
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v2, v0, v1, v4, v5}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v2

    .line 342
    const-string v3, "Accept-Ranges"

    const-string v4, "bytes"

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "ETag"

    invoke-virtual {v2, v3, v10}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :cond_9
    move-wide v4, v2

    goto/16 :goto_6

    :cond_a
    move-wide v6, v4

    goto/16 :goto_5

    :cond_b
    move-wide v2, v4

    move-wide v4, v6

    goto/16 :goto_0

    :cond_c
    move-wide v8, v6

    move-object v6, v2

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hpplay/nanohttpd/a/a/c/c;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 140
    const-wide/16 v8, 0x0

    .line 141
    const-wide/16 v6, -0x1

    .line 142
    const-string v4, "range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    if-eqz v4, :cond_c

    .line 144
    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 145
    const-string v5, "bytes="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    const/16 v4, 0x2d

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 148
    if-lez v4, :cond_b

    .line 149
    const/4 v5, 0x0

    .line 150
    :try_start_1
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 151
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    move-wide v6, v8

    :goto_0
    move-object v8, v10

    move-wide v10, v6

    move-wide v6, v4

    .line 160
    :goto_1
    :try_start_2
    const-string v4, "if-range"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 164
    :goto_2
    const-string v4, "if-none-match"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    if-eqz v4, :cond_3

    const-string v9, "*"

    .line 166
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 170
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 172
    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v9, v10, v16

    if-ltz v9, :cond_5

    cmp-long v9, v10, v14

    if-gez v9, :cond_5

    .line 176
    if-eqz v4, :cond_4

    .line 181
    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v5, ""

    move-object/from16 v0, p4

    invoke-static {v4, v0, v5}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 182
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_4
    return-object v4

    .line 153
    :catch_0
    move-exception v4

    move-object/from16 v18, v10

    move-wide v10, v8

    move-object/from16 v8, v18

    goto :goto_1

    .line 162
    :cond_2
    const/4 v4, 0x0

    move v5, v4

    goto :goto_2

    .line 166
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 184
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gez v4, :cond_a

    .line 185
    const-wide/16 v4, 0x1

    sub-long v4, v14, v4

    move-wide v8, v4

    .line 187
    :goto_5
    sub-long v4, v8, v10

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 188
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_9

    .line 189
    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 192
    :goto_6
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 193
    invoke-virtual {v4, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 195
    sget-object v5, Lcom/hpplay/nanohttpd/a/a/c/d;->f:Lcom/hpplay/nanohttpd/a/a/c/d;

    move-object/from16 v0, p4

    invoke-static {v5, v0, v4, v6, v7}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 197
    const-string v5, "Accept-Ranges"

    const-string v13, "bytes"

    invoke-virtual {v4, v5, v13}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "Content-Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v5, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 234
    :catch_1
    move-exception v4

    .line 235
    const-string v4, "Reading file failed."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/c/a;->d(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    goto/16 :goto_4

    .line 205
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v8, :cond_6

    cmp-long v6, v10, v14

    if-ltz v6, :cond_6

    .line 209
    :try_start_3
    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->z:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v5, "text/plain"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 211
    const-string v5, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes */"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 213
    :cond_6
    if-nez v8, :cond_7

    if-eqz v4, :cond_7

    .line 217
    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v5, ""

    move-object/from16 v0, p4

    invoke-static {v4, v0, v5}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 218
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 219
    :cond_7
    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    .line 225
    sget-object v4, Lcom/hpplay/nanohttpd/a/a/c/d;->k:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v5, ""

    move-object/from16 v0, p4

    invoke-static {v4, v0, v5}, Lcom/hpplay/sdk/source/c/a;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 226
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 229
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/c/a;->a(Ljava/io/File;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v4

    .line 230
    const-string v5, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "ETag"

    invoke-virtual {v4, v5, v12}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :cond_9
    move-wide v6, v4

    goto/16 :goto_6

    :cond_a
    move-wide v8, v6

    goto/16 :goto_5

    :cond_b
    move-wide v4, v6

    move-wide v6, v8

    goto/16 :goto_0

    :cond_c
    move-wide v10, v8

    move-object v8, v4

    goto/16 :goto_1
.end method

.method protected b(Lcom/hpplay/nanohttpd/a/a/c;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 3

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/hpplay/nanohttpd/a/a/c;->c()Ljava/util/Map;

    move-result-object v0

    .line 57
    invoke-interface {p1}, Lcom/hpplay/nanohttpd/a/a/c;->f()Ljava/util/Map;

    .line 58
    invoke-interface {p1}, Lcom/hpplay/nanohttpd/a/a/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "LelinkFileServer"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/hpplay/sdk/source/c/a;->a(Ljava/util/Map;Lcom/hpplay/nanohttpd/a/a/c;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 4

    .prologue
    .line 355
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->o:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORBIDDEN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 4

    .prologue
    .line 360
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->C:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTERNAL ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->p:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/plain"

    const-string v2, "Error 404, file not found."

    invoke-static {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method
