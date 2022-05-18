.class public Lc/c/a/f/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/f/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 3

    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cookie"

    invoke-virtual {v1, v0, p1}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
