.class public Lc/c/a/f/g/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;Lc/c/a/f/g/e;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v7, p5

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_2
    const-wide/16 v2, 0x0

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    move-wide v9, v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    add-long v11, v2, v9

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    :try_start_2
    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    :goto_1
    invoke-static {v13}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    invoke-static {v14}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    return-object v8

    :cond_4
    const/16 v0, 0x1000

    :try_start_3
    new-array v0, v0, [B

    :cond_5
    move-wide v4, v9

    invoke-virtual {v13, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v1, v1

    add-long v9, v4, v1

    if-eqz p2, :cond_5

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-wide v2, v11

    move-wide v4, v9

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz p2, :cond_7

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v11

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    invoke-static {v13}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    invoke-static {v14}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v8, v0

    :cond_9
    return-object v8

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v14, v1

    :goto_3
    move-object v1, v13

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v14, v1

    :goto_4
    invoke-static {v1}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    invoke-static {v14}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    throw v0

    :cond_a
    :goto_5
    return-object v1
.end method
