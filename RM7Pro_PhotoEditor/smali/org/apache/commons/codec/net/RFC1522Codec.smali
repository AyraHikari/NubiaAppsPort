.class abstract Lorg/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract doDecoding([B)[B
.end method

.method protected abstract doEncoding([B)[B
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
