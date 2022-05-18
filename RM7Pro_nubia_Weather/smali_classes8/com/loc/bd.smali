.class public final Lcom/loc/bd;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/ax;",
            ">;)",
            "Lcom/loc/ax;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/loc/ax;

    invoke-direct {v0}, Lcom/loc/ax;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ax;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/t;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"sim\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sdkversion\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"product\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ed\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"nt\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"np\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"mnc\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"ant\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/loc/z;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/loc/ax;->a:Ljava/lang/String;

    iput p3, p1, Lcom/loc/ax;->d:I

    int-to-long v0, p4

    iput-wide v0, p1, Lcom/loc/ax;->b:J

    iput-object p5, p1, Lcom/loc/ax;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/loc/ao;Ljava/lang/String;)[B
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/ao;->a(Ljava/lang/String;)Lcom/loc/ao$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_1
    invoke-virtual {v3}, Lcom/loc/ao$b;->a()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lcom/loc/ao$b;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Lcom/loc/ao$b;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v2

    :goto_4
    :try_start_7
    const-string v4, "sui"

    const-string v5, "rdS"

    invoke-static {v1, v4, v5}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_5
    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Lcom/loc/ao$b;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_6
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Lcom/loc/ao$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_6
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a

    :cond_8
    :goto_9
    if-eqz v3, :cond_1

    :try_start_d
    invoke-virtual {v3}, Lcom/loc/ao$b;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v1

    goto :goto_4
.end method
