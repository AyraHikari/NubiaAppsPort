.class public Lorg/apache/http/impl/io/SocketOutputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
