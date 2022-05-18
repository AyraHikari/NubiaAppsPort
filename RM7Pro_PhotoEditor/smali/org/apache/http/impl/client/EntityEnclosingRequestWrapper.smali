.class public Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lorg/apache/http/impl/client/RequestWrapper;
.source ""

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRepeatable()Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
