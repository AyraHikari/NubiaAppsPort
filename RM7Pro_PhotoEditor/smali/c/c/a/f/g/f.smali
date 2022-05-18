.class public Lc/c/a/f/g/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;Lc/c/a/f/g/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v7, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    move-object v1, p2

    move-wide v2, v9

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Lc/c/a/h/d;->g(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v7, v1

    if-eqz p2, :cond_2

    const/4 v6, 0x0

    move-object v1, p2

    move-wide v2, v9

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    move-wide v4, v7

    if-eqz p2, :cond_4

    const/4 v6, 0x1

    move-object v1, p2

    move-wide v2, v9

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v0}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    throw p1
.end method
