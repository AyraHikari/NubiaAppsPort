.class public final Lcom/loc/ay;
.super Ljava/lang/Object;
.source "LogEngine.java"


# direct methods
.method public static a(Lcom/loc/ax;)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-virtual {v1}, Lcom/loc/bq;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/loc/ax;->f:Lcom/loc/bq;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/loc/bq;->a(Z)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/ax;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/loc/ax;->b:J

    invoke-static {v1, v4, v5}, Lcom/loc/ao;->a(Ljava/io/File;J)Lcom/loc/ao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, p0, v1}, Lcom/loc/ay;->a(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_3
    new-instance v5, Lcom/loc/aa;

    iget-object v6, p0, Lcom/loc/ax;->c:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/loc/aa;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/loc/aq;->a()Lcom/loc/aq;

    invoke-static {v5}, Lcom/loc/aq;->b(Lcom/loc/av;)[B

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "code"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/loc/ax;->f:Lcom/loc/bq;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/loc/ax;->f:Lcom/loc/bq;

    array-length v6, v4

    invoke-virtual {v5, v6}, Lcom/loc/bq;->a(I)V

    :cond_3
    iget-object v5, p0, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-virtual {v5}, Lcom/loc/bq;->b()I

    move-result v5

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_4

    invoke-static {v2, v1}, Lcom/loc/ay;->a(Lcom/loc/ao;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    const/4 v1, 0x0

    :try_start_4
    array-length v0, v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Lcom/loc/ao;->d()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_7
    const-string v5, "ofm"

    const-string v6, "dlo"

    invoke-static {v1, v5, v6}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_3
    :try_start_8
    const-string v3, "leg"

    const-string v4, "uts"

    invoke-static {v1, v3, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_2

    :cond_6
    move-object v2, v3

    :cond_7
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method private static a(Lcom/loc/ao;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/ao;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/loc/ao;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "dlo"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/ao;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[BLcom/loc/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p2, Lcom/loc/ax;->a:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/loc/ay;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/loc/ao;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p2, Lcom/loc/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    iget-wide v2, p2, Lcom/loc/ax;->b:J

    invoke-static {v0, v2, v3}, Lcom/loc/ao;->a(Ljava/io/File;J)Lcom/loc/ao;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    iget v0, p2, Lcom/loc/ax;->d:I

    invoke-virtual {v2, v0}, Lcom/loc/ao;->a(I)V

    iget-object v0, p2, Lcom/loc/ax;->e:Lcom/loc/ak;

    invoke-virtual {v0, p1}, Lcom/loc/ak;->b([B)[B

    move-result-object v0

    invoke-virtual {v2, p0}, Lcom/loc/ao;->b(Ljava/lang/String;)Lcom/loc/ao$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/loc/ao$a;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Lcom/loc/ao$a;->b()V

    invoke-virtual {v2}, Lcom/loc/ao;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Lcom/loc/ao;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_6
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "leg"

    const-string v2, "fet"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/ao;",
            "Lcom/loc/ax;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ao;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-string v6, ".0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {p0, v5}, Lcom/loc/bd;->a(Lcom/loc/ao;Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    add-int/2addr v0, v7

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p1, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-virtual {v5}, Lcom/loc/bq;->b()I

    move-result v5

    if-gt v0, v5, :cond_1

    iget-object v5, p1, Lcom/loc/ax;->g:Lcom/loc/bk;

    invoke-virtual {v5, v6}, Lcom/loc/bk;->b([B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p1, Lcom/loc/ax;->g:Lcom/loc/bk;

    invoke-virtual {v0}, Lcom/loc/bk;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "leg"

    const-string v3, "gCo"

    invoke-static {v0, v1, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-array v0, v2, [B

    goto :goto_1
.end method
