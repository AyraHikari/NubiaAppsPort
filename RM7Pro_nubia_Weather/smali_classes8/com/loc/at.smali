.class public final Lcom/loc/at;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/at$b;,
        Lcom/loc/at$c;,
        Lcom/loc/at$a;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavax/net/ssl/SSLContext;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/loc/au;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljavax/net/ssl/SSLContext;

.field private e:Ljava/net/Proxy;

.field private volatile f:Z

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/loc/at$b;

.field private l:Lcom/loc/aq$a;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/at;->m:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private constructor <init>(IILjava/net/Proxy;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/loc/at;->f:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/loc/at;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loc/at;->h:J

    iput-boolean v4, p0, Lcom/loc/at;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;

    iput p1, p0, Lcom/loc/at;->a:I

    iput p2, p0, Lcom/loc/at;->b:I

    iput-object p3, p0, Lcom/loc/at;->e:Ljava/net/Proxy;

    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/loc/p;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/at;->c:Z

    invoke-static {}, Lcom/loc/l;->d()V

    invoke-static {}, Lcom/loc/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/loc/at;->c:Z

    :cond_0
    iput-object v1, p0, Lcom/loc/at;->l:Lcom/loc/aq$a;

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/loc/at;->c:Z

    if-eqz v0, :cond_4

    :try_start_1
    sget-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    :cond_2
    sget-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-nez v0, :cond_3

    :try_start_2
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/loc/at;->d:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    new-instance v0, Lcom/loc/at$b;

    invoke-direct {v0, v4}, Lcom/loc/at$b;-><init>(B)V

    iput-object v0, p0, Lcom/loc/at;->j:Lcom/loc/at$b;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "ht"

    const-string v3, "ic"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ht"

    const-string v2, "ne"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method constructor <init>(Lcom/loc/av;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/loc/at;-><init>(Lcom/loc/av;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/loc/av;ZB)V
    .locals 3

    iget v0, p1, Lcom/loc/av;->c:I

    iget v1, p1, Lcom/loc/av;->d:I

    iget-object v2, p1, Lcom/loc/av;->e:Ljava/net/Proxy;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/loc/at;-><init>(IILjava/net/Proxy;Z)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/loc/av;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/loc/ar;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/loc/ar;

    invoke-virtual {p1}, Lcom/loc/ar;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/at;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ht"

    const-string v2, "pnfr"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/loc/av;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/at;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/loc/av;)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/loc/l;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/loc/av;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/loc/l;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_1
    if-ne v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "htu"

    const-string v3, "gt"

    invoke-static {v1, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Lcom/loc/au;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/loc/at;->m:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/at;->m:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcom/loc/au;

    sget-object v3, Lcom/loc/l;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/at;->d:Ljavax/net/ssl/SSLContext;

    invoke-direct {v2, v3, v4}, Lcom/loc/au;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/loc/at;->m:Ljava/lang/ref/SoftReference;

    :cond_1
    sget-object v0, Lcom/loc/at;->k:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/at;->m:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/au;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/au;

    sget-object v2, Lcom/loc/l;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/at;->d:Ljavax/net/ssl/SSLContext;

    invoke-direct {v0, v2, v3}, Lcom/loc/au;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ht"

    const-string v3, "gsf"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/loc/at$a;)Lcom/loc/aw;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    :try_start_0
    invoke-static {}, Lcom/loc/as;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/loc/at$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/4 v3, 0x0

    if-eqz v15, :cond_15

    const-string v2, "gsid"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v2

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/loc/at;->o:Z

    if-eqz v8, :cond_7

    const-string v8, "sc"

    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/loc/at;->a(Ljava/util/Map;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    :goto_0
    if-eqz v2, :cond_b

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/at;->p:Ljava/lang/String;

    const-string v13, "loc"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/at;->p:Ljava/lang/String;

    const/4 v13, 0x2

    if-ne v3, v13, :cond_8

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/at;->n:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v8, v3, v13, v0, v1}, Lcom/loc/l;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v13, v2

    move-object v8, v6

    :goto_2
    const/16 v2, 0xc8

    if-eq v7, v2, :cond_d

    :try_start_3
    new-instance v2, Lcom/loc/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/at;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/at;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v8, v4}, Lcom/loc/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/loc/j;->a(I)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    :goto_3
    :try_start_4
    new-instance v8, Lcom/loc/j;

    const-string v9, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/loc/at;->i:Ljava/lang/String;

    invoke-direct {v8, v9, v3, v10}, Lcom/loc/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, v2, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/loc/j;->h()V

    :cond_1
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    :goto_4
    if-eqz v12, :cond_2

    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v11, :cond_3

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_6
    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/io/PushbackInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_7
    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_8
    throw v2

    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v8}, Lcom/loc/l;->b(Ljava/lang/String;)V

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/loc/at;->a(Ljava/util/Map;Z)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v3

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/at;->p:Ljava/lang/String;

    const/4 v13, 0x2

    if-ne v3, v13, :cond_a

    const/4 v3, 0x1

    :goto_9
    invoke-static {v8, v3}, Lcom/loc/l;->b(Ljava/lang/String;Z)V

    move v13, v2

    move-object v8, v6

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_9

    :cond_b
    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/loc/as;->a(ZLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_c
    :goto_a
    move v13, v2

    move-object v8, v6

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move v2, v3

    :goto_b
    move v13, v2

    move-object v8, v6

    goto/16 :goto_2

    :cond_d
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/loc/at;->a(Lcom/loc/at$a;ZJJ)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v5

    :try_start_d
    new-instance v3, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v3, v5, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v2, 0x2

    :try_start_e
    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    const/16 v7, 0x1f

    if-ne v4, v7, :cond_e

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    const/16 v4, -0x75

    if-ne v2, v4, :cond_e

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_c
    const/16 v2, 0x400

    :try_start_f
    new-array v2, v2, [B

    :goto_d
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_f

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    :catch_2
    move-exception v2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_3

    :cond_e
    move-object v4, v3

    goto :goto_c

    :cond_f
    invoke-static {}, Lcom/loc/ab;->c()V

    new-instance v2, Lcom/loc/aw;

    invoke-direct {v2}, Lcom/loc/aw;-><init>()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v2, Lcom/loc/aw;->a:[B

    iput-object v15, v2, Lcom/loc/aw;->b:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/loc/at;->i:Ljava/lang/String;

    iput-object v7, v2, Lcom/loc/aw;->c:Ljava/lang/String;

    iput-object v8, v2, Lcom/loc/aw;->d:Ljava/lang/String;

    iput-boolean v13, v2, Lcom/loc/aw;->e:Z

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/loc/as;->a(Ljava/net/URL;Lcom/loc/aw;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v6, :cond_10

    :try_start_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_10
    :goto_e
    if-eqz v5, :cond_11

    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    :cond_11
    :goto_f
    if-eqz v3, :cond_12

    :try_start_12
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    :cond_12
    :goto_10
    if-eqz v4, :cond_13

    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    :cond_13
    :goto_11
    return-object v2

    :catch_3
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_4
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_5
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_6
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_7
    move-exception v6

    const-string v7, "ht"

    const-string v8, "par"

    invoke-static {v6, v7, v8}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_8
    move-exception v5

    const-string v6, "ht"

    const-string v7, "par"

    invoke-static {v5, v6, v7}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_9
    move-exception v3

    const-string v5, "ht"

    const-string v6, "par"

    invoke-static {v3, v5, v6}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_a
    move-exception v3

    const-string v4, "ht"

    const-string v5, "par"

    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catchall_1
    move-exception v2

    goto/16 :goto_4

    :catchall_2
    move-exception v2

    move-object v12, v6

    goto/16 :goto_4

    :catchall_3
    move-exception v2

    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_4

    :catchall_4
    move-exception v2

    move-object v9, v3

    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_4

    :catchall_5
    move-exception v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v7, v12

    move-object v6, v11

    goto/16 :goto_3

    :catch_c
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v7, v6

    move-object v6, v11

    goto/16 :goto_3

    :catch_d
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    move-object v7, v6

    move-object v6, v5

    move-object v5, v10

    goto/16 :goto_3

    :catch_e
    move-exception v2

    move-object v4, v3

    move-object v7, v6

    move-object v6, v5

    move-object v3, v8

    move-object v5, v10

    goto/16 :goto_3

    :catch_f
    move-exception v3

    goto/16 :goto_b

    :cond_14
    move v2, v3

    goto/16 :goto_a

    :cond_15
    move v13, v3

    move-object v8, v6

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    if-le v1, v8, :cond_1

    const-string v3, ""

    const-string v2, ""

    array-length v6, v5

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v2

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    const-string v7, "sdkversion"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v2

    :cond_0
    const-string v7, "product"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v8, :cond_1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/loc/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v8, :cond_1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ht"

    const-string v3, "pnfp"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/loc/at$a;ZJJ)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/at$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    iget v2, p0, Lcom/loc/at$a;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    move v2, v1

    :goto_0
    :try_start_2
    iget v4, p0, Lcom/loc/at$a;->b:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/loc/at$a;->b:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    move v1, v0

    move-object v0, v3

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move v2, v0

    move-object v1, v3

    :goto_3
    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    sub-long v6, p4, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/l;->a(Ljava/lang/String;ZZZJ)V

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v0

    move-object v1, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_3
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "csid"

    iget-object v1, p0, Lcom/loc/at;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/loc/at;->a:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/loc/at;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ht"

    const-string v2, "adh"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "sc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-le v3, v1, :cond_5

    const-string v3, "1"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const-string v0, "lct"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "lct"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/loc/l;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "platinfo"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "platinfo"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/at;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ht"

    const-string v3, "pnfh"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BI)Lcom/loc/aw;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)",
            "Lcom/loc/aw;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/loc/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loc/aw;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    move/from16 v0, p7

    invoke-static {p1, p2, v0}, Lcom/loc/at;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/loc/as;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    packed-switch p7, :pswitch_data_0

    :goto_1
    if-nez p5, :cond_2

    new-instance p5, Ljava/util/HashMap;

    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iget-object v7, p0, Lcom/loc/at;->j:Lcom/loc/at$b;

    invoke-virtual {v7}, Lcom/loc/at$b;->a()Lcom/loc/at$c;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/loc/at;->n:Ljava/lang/String;

    if-eqz p3, :cond_12

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v7, p0, Lcom/loc/at;->j:Lcom/loc/at$b;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/loc/at$b;->a(Ljava/lang/String;)Lcom/loc/at$c;

    move-result-object v7

    move-object v8, v7

    :goto_2
    const-string v7, "/v3/iasdkauth"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v7}, Lcom/loc/l;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/loc/at;->o:Z

    const-string v7, "lct"

    iget-object v9, p0, Lcom/loc/at;->p:Ljava/lang/String;

    invoke-static {v9}, Lcom/loc/l;->c(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v9, Lcom/loc/aq;->a:I

    const-string v7, ""

    packed-switch v9, :pswitch_data_1

    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_4

    const-string v10, "targetHost"

    move-object/from16 v0, p5

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v9, p0, Lcom/loc/at;->c:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/loc/at;->j:Lcom/loc/at$b;

    invoke-virtual {v9, v7}, Lcom/loc/at$b;->b(Ljava/lang/String;)V

    :cond_5
    iget-boolean v7, p0, Lcom/loc/at;->c:Z

    if-eqz v7, :cond_6

    invoke-static {v3}, Lcom/loc/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/loc/at;->l:Lcom/loc/aq$a;

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/loc/at;->l:Lcom/loc/aq$a;

    invoke-interface {v2}, Lcom/loc/aq$a;->a()Ljava/net/URLConnection;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/loc/at;->e:Ljava/net/Proxy;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/loc/at;->e:Ljava/net/Proxy;

    invoke-virtual {v7, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    :cond_8
    :goto_4
    iget-boolean v3, p0, Lcom/loc/at;->c:Z

    if-eqz v3, :cond_10

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-boolean v3, Lcom/loc/l$f;->a:Z

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/loc/at;->a()Lcom/loc/au;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    invoke-virtual {v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v7}, Lcom/loc/au;->a()V

    :goto_5
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_6
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v3, :cond_9

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-le v3, v7, :cond_9

    const-string v3, "Connection"

    const-string v7, "close"

    invoke-virtual {v2, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lcom/loc/at;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v3, Lcom/loc/at$a;

    move/from16 v0, p7

    invoke-direct {v3, v2, v0}, Lcom/loc/at$a;-><init>(Ljava/net/HttpURLConnection;I)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, v3, Lcom/loc/at$a;->a:Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Lcom/loc/j; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz p6, :cond_a

    :try_start_4
    move-object/from16 v0, p6

    array-length v2, v0

    if-lez v2, :cond_a

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_a
    invoke-direct {p0, v3}, Lcom/loc/at;->a(Lcom/loc/at$a;)Lcom/loc/aw;
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lcom/loc/j; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ht"

    const-string v5, "mPt"

    :goto_7
    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_6
    iget v7, p0, Lcom/loc/at;->a:I

    add-int/lit16 v7, v7, -0x1388

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/loc/at;->a:I

    iget v7, p0, Lcom/loc/at;->b:I

    add-int/lit16 v7, v7, -0x1388

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/loc/at;->b:I

    goto/16 :goto_1

    :catch_1
    move-exception v7

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x1388

    iput v7, p0, Lcom/loc/at;->a:I

    const/16 v7, 0x1388

    iput v7, p0, Lcom/loc/at;->b:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/loc/j; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    :goto_8
    :try_start_7
    invoke-virtual {v2}, Ljava/net/ConnectException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v5, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v5}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    move-object v8, v2

    move-object v9, v4

    move-object v2, v3

    move v3, v6

    :goto_9
    if-eqz v3, :cond_b

    :try_start_8
    invoke-static/range {p7 .. p7}, Lcom/loc/l;->a(I)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/loc/at;->a(Lcom/loc/at$a;ZJJ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d

    :cond_b
    :goto_a
    if-eqz v9, :cond_c

    :try_start_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_b

    :cond_c
    :goto_b
    throw v8

    :pswitch_2
    :try_start_a
    sget-object v7, Lcom/loc/aq;->b:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    goto/16 :goto_4

    :cond_e
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    iget-object v7, p0, Lcom/loc/at;->d:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_a
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/loc/j; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_5

    :catch_3
    move-exception v2

    :goto_c
    :try_start_b
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v3, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v2

    move-object v8, v2

    move v3, v6

    move-object v9, v5

    move-object v2, v4

    goto :goto_9

    :cond_f
    :try_start_c
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    iget-object v7, p0, Lcom/loc/at;->d:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_c
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/loc/j; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_5

    :catch_4
    move-exception v2

    :goto_d
    :try_start_d
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v3, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_10
    :try_start_e
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/loc/j; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_6

    :catch_5
    move-exception v2

    :goto_e
    :try_start_f
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v3, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6
    move-exception v2

    :goto_f
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v3, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_7
    move-exception v2

    :goto_10
    new-instance v2, Lcom/loc/j;

    const-string v3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_8
    move-exception v2

    :goto_11
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Lcom/loc/j;

    const-string v3, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_9
    move-exception v2

    :goto_12
    invoke-virtual {v2}, Lcom/loc/j;->g()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    :goto_13
    :try_start_10
    const-string v6, "ht"

    const-string v7, "mPt"

    invoke-static {v2, v6, v7}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v9, v5

    move-object v2, v4

    goto/16 :goto_9

    :catch_a
    move-exception v2

    :goto_14
    :try_start_11
    const-string v3, "ht"

    const-string v7, "mPt"

    invoke-static {v2, v3, v7}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/loc/j;

    const-string v3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v2, v3}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_b
    move-exception v2

    const-string v3, "ht"

    const-string v4, "mPt"

    invoke-static {v2, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_c
    move-exception v3

    const-string v4, "ht"

    const-string v5, "mPt"

    goto/16 :goto_7

    :catch_d
    move-exception v2

    goto/16 :goto_a

    :catchall_3
    move-exception v2

    move-object v8, v2

    move v3, v6

    move-object v9, v5

    move-object v2, v4

    goto/16 :goto_9

    :catchall_4
    move-exception v2

    move-object v8, v2

    move-object v9, v5

    move-object v2, v3

    move v3, v6

    goto/16 :goto_9

    :catch_e
    move-exception v2

    move-object v4, v3

    goto :goto_14

    :catch_f
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_14

    :catch_10
    move-exception v2

    move-object v4, v3

    goto :goto_12

    :catch_11
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_12

    :catch_12
    move-exception v2

    move-object v4, v3

    goto :goto_11

    :catch_13
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_11

    :catch_14
    move-exception v2

    move-object v4, v3

    goto :goto_10

    :catch_15
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_10

    :catch_16
    move-exception v2

    move-object v4, v3

    goto/16 :goto_f

    :catch_17
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_f

    :catch_18
    move-exception v2

    move-object v4, v3

    goto/16 :goto_e

    :catch_19
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_e

    :catch_1a
    move-exception v2

    move-object v4, v3

    goto/16 :goto_d

    :catch_1b
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_d

    :catch_1c
    move-exception v2

    move-object v4, v3

    goto/16 :goto_c

    :catch_1d
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_c

    :catch_1e
    move-exception v2

    move-object v4, v5

    goto/16 :goto_8

    :catch_1f
    move-exception v2

    goto/16 :goto_8

    :cond_11
    move v3, v6

    goto/16 :goto_13

    :cond_12
    move-object v8, v7

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
