.class public Lc/c/a/f/h/a;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source ""


# static fields
.field private static b:Ljava/security/KeyStore;

.field private static c:Lc/c/a/f/h/a;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lc/c/a/f/h/a;->b:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    sget-object v0, Lc/c/a/f/h/a;->b:Ljava/security/KeyStore;

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/a;->a:Ljavax/net/ssl/SSLContext;

    new-instance v1, Lc/c/a/f/h/a$a;

    invoke-direct {v1, p0}, Lc/c/a/f/h/a$a;-><init>(Lc/c/a/f/h/a;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static a()Lc/c/a/f/h/a;
    .locals 2

    sget-object v0, Lc/c/a/f/h/a;->c:Lc/c/a/f/h/a;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lc/c/a/f/h/a;

    invoke-direct {v0}, Lc/c/a/f/h/a;-><init>()V

    sput-object v0, Lc/c/a/f/h/a;->c:Lc/c/a/f/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lc/c/a/f/h/a;->c:Lc/c/a/f/h/a;

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lc/c/a/f/h/a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lc/c/a/f/h/a;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
