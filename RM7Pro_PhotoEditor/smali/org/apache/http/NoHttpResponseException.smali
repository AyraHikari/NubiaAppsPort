.class public Lorg/apache/http/NoHttpResponseException;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
