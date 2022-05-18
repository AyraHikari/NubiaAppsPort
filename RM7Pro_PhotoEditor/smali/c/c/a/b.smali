.class public Lc/c/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final f:Lc/c/a/f/a;

.field private static final g:Lc/c/a/g/d;


# instance fields
.field private final a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private c:Lc/c/a/f/g/c;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/f/a;

    invoke-direct {v0}, Lc/c/a/f/a;-><init>()V

    sput-object v0, Lc/c/a/b;->f:Lc/c/a/f/a;

    new-instance v0, Lc/c/a/g/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc/c/a/g/d;-><init>(I)V

    sput-object v0, Lc/c/a/b;->g:Lc/c/a/g/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3a98

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc/c/a/b;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lc/c/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lc/c/a/b;->d:Ljava/lang/String;

    invoke-static {}, Lc/c/a/f/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/b;->e:J

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lc/c/a/h/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    invoke-static {v0, p2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 p1, 0x2000

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance p1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance p2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    const/16 v2, 0x50

    const-string v3, "http"

    invoke-direct {p2, v3, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance p2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lc/c/a/f/h/a;->a()Lc/c/a/f/h/a;

    move-result-object v1

    const/16 v2, 0x1bb

    const-string v3, "https"

    invoke-direct {p2, v3, v1, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {p2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object p2, p0, Lc/c/a/b;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance p1, Lc/c/a/f/h/c;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lc/c/a/f/h/c;-><init>(I)V

    invoke-virtual {p2, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    new-instance p1, Lc/c/a/b$a;

    invoke-direct {p1, p0}, Lc/c/a/b$a;-><init>(Lc/c/a/b;)V

    invoke-virtual {p2, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance p1, Lc/c/a/b$b;

    invoke-direct {p1, p0}, Lc/c/a/b$b;-><init>(Lc/c/a/b;)V

    invoke-virtual {p2, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    return-void
.end method

.method private e(Lc/c/a/f/h/b;Lc/c/a/f/c;)Lc/c/a/f/e;
    .locals 4

    new-instance v0, Lc/c/a/f/f;

    iget-object v1, p0, Lc/c/a/b;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lc/c/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lc/c/a/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/f/f;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V

    iget-wide v1, p0, Lc/c/a/b;->e:J

    invoke-virtual {v0, v1, v2}, Lc/c/a/f/f;->c(J)V

    iget-object v1, p0, Lc/c/a/b;->c:Lc/c/a/f/g/c;

    invoke-virtual {v0, v1}, Lc/c/a/f/f;->d(Lc/c/a/f/g/c;)V

    invoke-virtual {p1, p2}, Lc/c/a/f/h/b;->a(Lc/c/a/f/c;)V

    invoke-virtual {v0, p1}, Lc/c/a/f/f;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lc/c/a/f/h/b$a;Ljava/lang/String;Ljava/lang/String;Lc/c/a/f/c;ZZLc/c/a/f/g/d;)Lc/c/a/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/f/h/b$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/c/a/f/c;",
            "ZZ",
            "Lc/c/a/f/g/d<",
            "Ljava/io/File;",
            ">;)",
            "Lc/c/a/f/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lc/c/a/f/h/b;

    invoke-direct {v0, p1, p2}, Lc/c/a/f/h/b;-><init>(Lc/c/a/f/h/b$a;Ljava/lang/String;)V

    new-instance p1, Lc/c/a/f/b;

    iget-object p2, p0, Lc/c/a/b;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lc/c/a/b;->b:Lorg/apache/http/protocol/HttpContext;

    iget-object v2, p0, Lc/c/a/b;->d:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v2, p7}, Lc/c/a/f/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lc/c/a/f/g/d;)V

    iget-wide v1, p0, Lc/c/a/b;->e:J

    invoke-virtual {p1, v1, v2}, Lc/c/a/f/b;->u(J)V

    iget-object p2, p0, Lc/c/a/b;->c:Lc/c/a/f/g/c;

    invoke-virtual {p1, p2}, Lc/c/a/f/b;->v(Lc/c/a/f/g/c;)V

    if-nez p4, :cond_0

    sget-object p2, Lc/c/a/b;->g:Lc/c/a/g/d;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p7, 0x0

    aput-object v0, p4, p7

    const/4 p7, 0x1

    aput-object p3, p4, p7

    const/4 p3, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p3

    const/4 p3, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p3

    invoke-virtual {p1, p2, p4}, Lc/c/a/g/c;->g(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lc/c/a/g/c;

    return-object p1

    :cond_0
    invoke-virtual {v0, p4, p1}, Lc/c/a/f/h/b;->b(Lc/c/a/f/c;Lc/c/a/f/g/e;)V

    invoke-virtual {p4}, Lc/c/a/f/c;->c()Lc/c/a/g/b;

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lc/c/a/f/g/d;)Lc/c/a/f/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc/c/a/f/g/d<",
            "Ljava/io/File;",
            ">;)",
            "Lc/c/a/f/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    sget-object v1, Lc/c/a/f/h/b$a;->b:Lc/c/a/f/h/b$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lc/c/a/b;->a(Lc/c/a/f/h/b$a;Ljava/lang/String;Ljava/lang/String;Lc/c/a/f/c;ZZLc/c/a/f/g/d;)Lc/c/a/f/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/c/a/f/h/b$a;Ljava/lang/String;)Lc/c/a/f/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc/c/a/b;->d(Lc/c/a/f/h/b$a;Ljava/lang/String;Lc/c/a/f/c;)Lc/c/a/f/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc/c/a/f/h/b$a;Ljava/lang/String;Lc/c/a/f/c;)Lc/c/a/f/e;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lc/c/a/f/h/b;

    invoke-direct {v0, p1, p2}, Lc/c/a/f/h/b;-><init>(Lc/c/a/f/h/b$a;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lc/c/a/b;->e(Lc/c/a/f/h/b;Lc/c/a/f/c;)Lc/c/a/f/e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
