.class Lc/c/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b;-><init>(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lc/c/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    const-string p2, "Accept-Encoding"

    invoke-interface {p1, p2}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gzip"

    invoke-interface {p1, p2, v0}, Lorg/apache/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
