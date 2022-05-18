.class public Lc/c/a/f/h/d/b;
.super Lc/c/a/f/h/d/a;
.source ""


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/a/f/h/d/a;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
