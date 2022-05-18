.class public Lc/c/a/f/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private c:Lc/c/a/f/g/c;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/f/f;->g:I

    invoke-static {}, Lc/c/a/f/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/f/f;->h:J

    iput-object p1, p0, Lc/c/a/f/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lc/c/a/f/f;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lc/c/a/f/f;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)Lc/c/a/f/e;
    .locals 9

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    new-instance v0, Lc/c/a/f/e;

    iget-object v5, p0, Lc/c/a/f/f;->f:Ljava/lang/String;

    iget-object v6, p0, Lc/c/a/f/f;->d:Ljava/lang/String;

    iget-wide v7, p0, Lc/c/a/f/f;->h:J

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lc/c/a/f/e;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lc/c/a/f/f;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lc/c/a/f/e;->b(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1a0

    if-ne v1, p1, :cond_2

    new-instance p1, Lc/c/a/e/c;

    const-string v0, "maybe the file has downloaded completely"

    invoke-direct {p1, v1, v0}, Lc/c/a/e/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lc/c/a/e/c;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lc/c/a/e/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lc/c/a/f/f;->c:Lc/c/a/f/g/c;

    if-nez v0, :cond_4

    new-instance v0, Lc/c/a/f/g/a;

    invoke-direct {v0}, Lc/c/a/f/g/a;-><init>()V

    iput-object v0, p0, Lc/c/a/f/f;->c:Lc/c/a/f/g/c;

    :cond_4
    iget-object v0, p0, Lc/c/a/f/f;->c:Lc/c/a/f/g/c;

    invoke-interface {v0, p1}, Lc/c/a/f/g/c;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lc/c/a/f/f;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/e;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Lc/c/a/e/c;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lc/c/a/e/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/e;
    .locals 5

    iget-object v0, p0, Lc/c/a/f/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/f/f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/f/f;->e:Ljava/lang/String;

    sget-object v2, Lc/c/a/b;->f:Lc/c/a/f/a;

    invoke-virtual {v2, v1}, Lc/c/a/f/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/f/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lc/c/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lc/c/a/f/e;

    invoke-direct {v2, v1}, Lc/c/a/f/e;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lc/c/a/f/f;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lc/c/a/f/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/c/a/f/f;->a(Lorg/apache/http/HttpResponse;)Lc/c/a/f/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/c/a/e/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v1, p0, Lc/c/a/f/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/c/a/f/f;->g:I

    iget-object v3, p0, Lc/c/a/f/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_2
    iget v2, p0, Lc/c/a/f/f;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/c/a/f/f;->g:I

    iget-object v3, p0, Lc/c/a/f/f;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    move v4, v2

    move-object v2, v1

    move v1, v4

    :goto_3
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lc/c/a/e/c;

    invoke-direct {p1, v2}, Lc/c/a/e/c;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lc/c/a/f/f;->h:J

    return-void
.end method

.method public d(Lc/c/a/f/g/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/f/f;->c:Lc/c/a/f/g/c;

    return-void
.end method
