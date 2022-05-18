.class public Lorg/apache/http/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/HttpRequestFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
