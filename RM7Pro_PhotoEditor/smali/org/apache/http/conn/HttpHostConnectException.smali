.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/ConnectException;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHost()Lorg/apache/http/HttpHost;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
