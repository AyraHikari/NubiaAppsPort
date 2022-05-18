.class public Lcom/hpplay/nanohttpd/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/hpplay/nanohttpd/a/a/d;

.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/hpplay/nanohttpd/a/a/d;Ljava/io/InputStream;Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "ClientHandler"

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->a:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    .line 61
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    .line 62
    iput-object p3, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 72
    const/4 v4, 0x0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 75
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d;->i()Lcom/hpplay/nanohttpd/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/b/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/nanohttpd/a/a/e/e;

    .line 76
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/b;

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/nanohttpd/a/a/b;-><init>(Lcom/hpplay/nanohttpd/a/a/d;Lcom/hpplay/nanohttpd/a/a/e/e;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_1

    .line 89
    const-string v1, "ClientHandler"

    const-string v2, "Communication with the client broken, or an bug in the handler code"

    invoke-static {v1, v2, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_1
    invoke-static {v4}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v0, v0, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    invoke-interface {v0, p0}, Lcom/hpplay/nanohttpd/a/a/f/b;->a(Lcom/hpplay/nanohttpd/a/a/a;)V

    .line 97
    :goto_1
    return-void

    .line 92
    :cond_2
    invoke-static {v4}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v0, v0, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    invoke-interface {v0, p0}, Lcom/hpplay/nanohttpd/a/a/f/b;->a(Lcom/hpplay/nanohttpd/a/a/a;)V

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/a;->c:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/a;->d:Ljava/net/Socket;

    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/a;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v1, v1, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    invoke-interface {v1, p0}, Lcom/hpplay/nanohttpd/a/a/f/b;->a(Lcom/hpplay/nanohttpd/a/a/a;)V

    throw v0
.end method
