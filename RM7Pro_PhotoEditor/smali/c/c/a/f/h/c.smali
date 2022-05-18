.class public Lc/c/a/f/h/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc/c/a/f/h/c;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc/c/a/f/h/c;->c:Ljava/util/HashSet;

    sget-object v0, Lc/c/a/f/h/c;->b:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc/c/a/f/h/c;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc/c/a/f/h/c;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc/c/a/f/h/c;->c:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc/c/a/f/h/c;->c:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/f/h/c;->a:I

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "http.request_sent"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    iget v2, p0, Lc/c/a/f/h/c;->a:I

    const/4 v3, 0x1

    if-le p2, v2, :cond_2

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_2
    sget-object p2, Lc/c/a/f/h/c;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lc/c/a/f/h/c;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-eqz v3, :cond_6

    :try_start_0
    const-string p1, "http.request"

    invoke-interface {p3, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of p2, p1, Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "GET"

    if-eqz p2, :cond_4

    :try_start_1
    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    move v0, p1

    goto :goto_4

    :cond_4
    instance-of p2, p1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, "retry error, curr request is null"

    invoke-static {p1}, Lc/c/a/h/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    const-string p2, "retry error"

    invoke-static {p2, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    if-eqz v0, :cond_7

    const-wide/16 p1, 0x1f4

    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_7
    :goto_5
    return v0
.end method
