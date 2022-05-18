.class public final Lc/c/a/f/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/http/HttpResponse;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lorg/apache/http/Header;

.field public final d:Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/f/d;->a:Lorg/apache/http/HttpResponse;

    iput-object p2, p0, Lc/c/a/f/d;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p2

    iput-object p2, p0, Lc/c/a/f/d;->c:Lorg/apache/http/Header;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/d;->d:Lorg/apache/http/Header;

    :cond_1
    return-void
.end method
