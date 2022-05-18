.class public final Lcom/loc/cb;
.super Ljava/lang/Object;
.source "CollectionUploader.java"


# direct methods
.method public static a([B)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/loc/di;

    invoke-direct {v3}, Lcom/loc/di;-><init>()V

    iget-object v2, v3, Lcom/loc/di;->b:Ljava/util/Map;

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/loc/di;->b:Ljava/util/Map;

    const-string v4, "aps_c_src"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lc_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/de;->a()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/loc/di;->b:Ljava/util/Map;

    const-string v4, "aps_c_key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/de;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/loc/de;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v3, Lcom/loc/di;->d:[B

    sget-boolean v2, Lcom/loc/bs;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "http://cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&"

    iput-object v2, v3, Lcom/loc/di;->a:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/loc/cv;->a()Lcom/loc/dk;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/loc/dk;->a(Lcom/loc/di;)Lcom/loc/dj;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/loc/dj;->a:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    iget-object v1, v2, Lcom/loc/dj;->c:[B

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "true"

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-boolean v2, Lcom/loc/bs;->b:Z

    if-eqz v2, :cond_3

    const-string v2, "https://"

    :goto_2
    const-string v4, "cgicol.amap.com/collection/collectData?src=baseCol&ver=v74&"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/loc/di;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v2, "http://"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
