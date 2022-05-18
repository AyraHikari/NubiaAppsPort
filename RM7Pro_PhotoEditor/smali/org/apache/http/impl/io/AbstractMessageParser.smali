.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final lineParser:Lorg/apache/http/message/LineParser;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
.end method
