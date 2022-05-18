.class Lc/c/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


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
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lc/c/a/f/h/d/b;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p2, v0}, Lc/c/a/f/h/d/b;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, p2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
