.class public Lcom/hpplay/nanohttpd/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/nanohttpd/a/a/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/hpplay/nanohttpd/a/a/d;

.field private final c:I

.field private d:Ljava/io/IOException;

.field private e:Z

.field private f:Lcom/hpplay/nanohttpd/a/a/e$a;

.field private g:[I


# direct methods
.method public constructor <init>(Lcom/hpplay/nanohttpd/a/a/d;I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "ServerRunnable"

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->a:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->e:Z

    .line 78
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    .line 79
    iput p2, p0, Lcom/hpplay/nanohttpd/a/a/e;->c:I

    .line 80
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d;->b()Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 138
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/d;->b()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, v0, Lcom/hpplay/nanohttpd/a/a/d;->l:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->e:Z

    .line 143
    :goto_1
    return v0

    .line 137
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "ServerRunnable"

    invoke-static {v1, v0}, Lcom/hpplay/nanohttpd/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->d:Ljava/io/IOException;

    return-object v0
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/e$a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/e;->f:Lcom/hpplay/nanohttpd/a/a/e$a;

    .line 71
    return-void
.end method

.method public varargs a([I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/e;->g:[I

    .line 75
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->e:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->g:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->g:[I

    array-length v1, v1

    if-gtz v1, :cond_3

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v1, v1, Lcom/hpplay/nanohttpd/a/a/d;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget v2, v2, Lcom/hpplay/nanohttpd/a/a/d;->l:I

    invoke-direct {p0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/e;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 86
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v1}, Lcom/hpplay/nanohttpd/a/a/d;->c()Ljava/io/IOException;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->d:Ljava/io/IOException;

    .line 87
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->d:Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v1, v1, Lcom/hpplay/nanohttpd/a/a/d;->k:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/hpplay/nanohttpd/a/a/e;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, " Socket bind failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->d:Ljava/io/IOException;

    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/e;->g:[I

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget v4, v2, v1

    .line 101
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v0, v0, Lcom/hpplay/nanohttpd/a/a/d;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/hpplay/nanohttpd/a/a/e;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    const-string v1, "ServerRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/nanohttpd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    if-nez v0, :cond_6

    .line 109
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang.Exception: Socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/e;->g:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bind failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->d:Ljava/io/IOException;

    goto :goto_0

    .line 100
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->f:Lcom/hpplay/nanohttpd/a/a/e$a;

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->f:Lcom/hpplay/nanohttpd/a/a/e$a;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e$a;->a()V

    .line 118
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d;->b()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 119
    iget v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->c:I

    if-lez v1, :cond_8

    .line 120
    iget v1, p0, Lcom/hpplay/nanohttpd/a/a/e;->c:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 122
    :cond_8
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    iget-object v2, v2, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v3, v0, v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/hpplay/nanohttpd/a/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/hpplay/nanohttpd/a/a/f/b;->b(Lcom/hpplay/nanohttpd/a/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->b:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d;->b()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    :goto_2
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->f:Lcom/hpplay/nanohttpd/a/a/e$a;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/e;->f:Lcom/hpplay/nanohttpd/a/a/e$a;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/e$a;->b()V

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "ServerRunnable"

    const-string v2, "Communication with the client broken"

    invoke-static {v1, v2, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
