.class public final Lcom/loc/au;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Landroid/content/Context;

.field private c:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V
    .locals 4

    const/16 v3, 0x9

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->b:Landroid/content/Context;

    :cond_0
    iput-object p2, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "myssl"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "<init3>"

    :goto_3
    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_6
    iget-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_4
    :try_start_7
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_6

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_5
    throw v1

    :catch_2
    move-exception v0

    const-string v2, "myssl"

    const-string v3, "<init2>"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v0

    const-string v2, "myssl"

    const-string v3, "<init3>"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "<init2>"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "<init2>"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "<init3>"

    goto :goto_3
.end method

.method private static a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 5

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-boolean v1, Lcom/loc/l$f;->b:Z

    if-eqz v1, :cond_0

    instance-of v1, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TLSv1.2"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "myssl"

    const-string v3, "stlv2"

    invoke-static {v1, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/net/SSLSessionCache;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "UbVNlc3Npb25DYWNoZQ"

    invoke-static {v3}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "Yc2V0UGVyc2lzdGVudENhY2hl"

    invoke-static {v4}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "isc2"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/net/Socket;)V
    .locals 5

    const/16 v2, 0x11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/loc/l$f;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/loc/l$f;->e:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    sget v0, Lcom/loc/l$f;->f:I

    sget v1, Lcom/loc/l$f;->d:I

    if-le v0, v1, :cond_3

    sget v0, Lcom/loc/l$f;->d:I

    :goto_1
    if-le v0, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "Cc2V0VXNlU2Vzc2lvblRpY2tldHM"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "sust"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/loc/l$f;->f:I

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v1, 0x11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/loc/l$f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    sget v0, Lcom/loc/l$f;->d:I

    if-le v0, v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    :cond_2
    new-instance v1, Landroid/net/SSLSessionCache;

    iget-object v0, p0, Lcom/loc/au;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_3

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "MaW5zdGFsbA"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/SSLSessionCache;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljavax/net/ssl/SSLContext;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/loc/au;->c:Ljavax/net/ssl/SSLContext;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "myssl"

    const-string v3, "isc1"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/loc/au;->a(Landroid/net/SSLSessionCache;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/loc/au;->a(Landroid/net/SSLSessionCache;)V

    goto :goto_0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs1"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs3"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/UnknownHostException;

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs4"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/UnknownHostException;

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs5"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs6"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/au;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "cs2"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "gdcs"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/au;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "myssl"

    const-string v2, "gscs"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method
