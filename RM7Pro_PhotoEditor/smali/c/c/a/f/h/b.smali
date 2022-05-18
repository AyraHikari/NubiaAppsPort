.class public Lc/c/a/f/h/b;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source ""

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/h/b$a;
    }
.end annotation


# instance fields
.field private a:Lorg/apache/http/HttpEntity;

.field private b:Lc/c/a/f/h/b$a;

.field private c:Lc/c/a/f/h/e/a;

.field private d:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lc/c/a/f/h/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    iput-object p1, p0, Lc/c/a/f/h/b;->b:Lc/c/a/f/h/b$a;

    invoke-virtual {p0, p2}, Lc/c/a/f/h/b;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/f/c;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lc/c/a/f/c;->a()Ljava/lang/String;

    throw v1

    :cond_0
    invoke-virtual {p1}, Lc/c/a/f/c;->b()Ljava/util/List;

    throw v1

    :cond_1
    return-void
.end method

.method public b(Lc/c/a/f/c;Lc/c/a/f/g/e;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lc/c/a/f/c;->a()Ljava/lang/String;

    throw v0

    :cond_0
    invoke-virtual {p1}, Lc/c/a/f/c;->b()Ljava/util/List;

    throw v0

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc/c/a/f/h/e/a;

    invoke-direct {v0, p1}, Lc/c/a/f/h/e/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/c/a/f/h/b;->c:Lc/c/a/f/h/e/a;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/f/h/b;

    iget-object v1, p0, Lc/c/a/f/h/b;->a:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lc/c/a/f/h/b;->a:Lorg/apache/http/HttpEntity;

    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/http/message/AbstractHttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lc/c/a/f/h/b;->a:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/f/h/b;->b:Lc/c/a/f/h/b$a;

    invoke-virtual {v0}, Lc/c/a/f/h/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    invoke-static {p0}, Lc/c/a/h/d;->b(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    :cond_0
    iget-object v0, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    :cond_1
    iget-object v0, p0, Lc/c/a/f/h/b;->c:Lc/c/a/f/h/e/a;

    iget-object v1, p0, Lc/c/a/f/h/b;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lc/c/a/f/h/e/a;->a(Ljava/nio/charset/Charset;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/f/h/b;->a:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 1

    new-instance v0, Lc/c/a/f/h/e/a;

    invoke-direct {v0, p1}, Lc/c/a/f/h/e/a;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lc/c/a/f/h/b;->c:Lc/c/a/f/h/e/a;

    return-void
.end method
