.class public Lorg/apache/http/impl/client/TunnelRefusedException;
.super Lorg/apache/http/HttpException;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/HttpException;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
