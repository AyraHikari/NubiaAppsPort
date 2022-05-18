.class public Lcom/hpplay/nanohttpd/a/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hpplay/nanohttpd/b/b",
        "<",
        "Ljava/net/ServerSocket;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljavax/net/ssl/SSLServerSocketFactory;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d/b;->a:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 56
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/d/b;->b:[Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Ljava/net/ServerSocket;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d/b;->a:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 63
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d/b;->b:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d/b;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 69
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 70
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 71
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/d/b;->a()Ljava/net/ServerSocket;

    move-result-object v0

    return-object v0
.end method
