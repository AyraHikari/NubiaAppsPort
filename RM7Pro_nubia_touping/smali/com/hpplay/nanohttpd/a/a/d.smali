.class public abstract Lcom/hpplay/nanohttpd/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/nanohttpd/a/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:I = 0x1388

.field public static final h:Ljava/lang/String; = "text/plain"

.field public static final i:Ljava/lang/String; = "text/html"

.field protected static j:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/String; = "NanoHTTPD"

.field private static final q:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"


# instance fields
.field public final k:Ljava/lang/String;

.field public l:I

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/nanohttpd/b/c",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Lcom/hpplay/nanohttpd/a/a/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field protected n:Lcom/hpplay/nanohttpd/a/a/f/b;

.field o:Lcom/hpplay/nanohttpd/a/a/e$a;

.field private r:[I

.field private volatile s:Ljava/net/ServerSocket;

.field private t:Lcom/hpplay/nanohttpd/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hpplay/nanohttpd/b/b",
            "<",
            "Ljava/net/ServerSocket;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/Thread;

.field private v:Lcom/hpplay/nanohttpd/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hpplay/nanohttpd/b/c",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Lcom/hpplay/nanohttpd/a/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/hpplay/nanohttpd/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hpplay/nanohttpd/b/a",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/e/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 131
    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hpplay/nanohttpd/a/a/d;->b:Ljava/util/regex/Pattern;

    .line 135
    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hpplay/nanohttpd/a/a/d;->d:Ljava/util/regex/Pattern;

    .line 139
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hpplay/nanohttpd/a/a/d;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/nanohttpd/a/a/d;-><init>(Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d/a;

    invoke-direct {v0}, Lcom/hpplay/nanohttpd/a/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->t:Lcom/hpplay/nanohttpd/b/b;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->m:Ljava/util/List;

    .line 638
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$2;

    invoke-direct {v0, p0}, Lcom/hpplay/nanohttpd/a/a/d$2;-><init>(Lcom/hpplay/nanohttpd/a/a/d;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->o:Lcom/hpplay/nanohttpd/a/a/e$a;

    .line 375
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->k:Ljava/lang/String;

    .line 376
    iput p2, p0, Lcom/hpplay/nanohttpd/a/a/d;->l:I

    .line 377
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/e/c;

    invoke-direct {v0}, Lcom/hpplay/nanohttpd/a/a/e/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Lcom/hpplay/nanohttpd/b/a;)V

    .line 378
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/f/a;

    invoke-direct {v0}, Lcom/hpplay/nanohttpd/a/a/f/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Lcom/hpplay/nanohttpd/a/a/f/b;)V

    .line 381
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d$1;

    invoke-direct {v0, p0}, Lcom/hpplay/nanohttpd/a/a/d$1;-><init>(Lcom/hpplay/nanohttpd/a/a/d;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->v:Lcom/hpplay/nanohttpd/b/c;

    .line 388
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 291
    const/4 v0, 0x0

    .line 292
    if-ltz v1, :cond_0

    .line 293
    invoke-static {}, Lcom/hpplay/nanohttpd/a/a/d;->a()Ljava/util/Map;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "application/octet-stream"

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/hpplay/nanohttpd/a/a/d;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/hpplay/nanohttpd/a/a/d;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    return-object p1
.end method

.method public static a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    .line 193
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/default-mimetypes.properties"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/mimetypes.properties"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "NanoHTTPD"

    const-string v1, "no mime types found in the classpath! please provide mimetypes.properties"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method protected static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 447
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 3

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 267
    const-class v1, Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 269
    if-nez v1, :cond_0

    .line 270
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load keystore from classpath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 274
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 276
    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 3

    .prologue
    .line 234
    .line 236
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 238
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 240
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 300
    if-eqz p0, :cond_0

    .line 301
    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 302
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 304
    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v1, "NanoHTTPD"

    const-string v2, "Could not close"

    invoke-static {v1, v2, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    :cond_2
    :try_start_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_3

    .line 306
    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 308
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown object to close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    const-class v0, Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 209
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 211
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v2, 0x0

    .line 214
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 215
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-static {v2}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 221
    :goto_1
    invoke-interface {p0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v0, "NanoHTTPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no mime types available at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void

    .line 216
    :catch_1
    move-exception v1

    .line 217
    :try_start_3
    const-string v5, "NanoHTTPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not load mimetypes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :try_start_4
    invoke-static {v2}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method protected static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 465
    if-eqz p0, :cond_4

    .line 466
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, "&"

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 469
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 470
    if-ltz v4, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 472
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    :goto_2
    if-eqz v1, :cond_0

    .line 476
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {v1}, Lcom/hpplay/nanohttpd/a/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 474
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 480
    :cond_4
    return-object v2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 494
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    const-string v2, "NanoHTTPD"

    const-string v3, "Encoding not supported, ignored"

    invoke-static {v2, v3, v1}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/hpplay/nanohttpd/a/a/a;
    .locals 1

    .prologue
    .line 420
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/hpplay/nanohttpd/a/a/a;-><init>(Lcom/hpplay/nanohttpd/a/a/d;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/c;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/b/c;

    .line 544
    invoke-interface {v0, p1}, Lcom/hpplay/nanohttpd/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/a/a/c/c;

    .line 545
    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->v:Lcom/hpplay/nanohttpd/b/c;

    invoke-interface {v0, p1}, Lcom/hpplay/nanohttpd/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/a/a/c/c;

    goto :goto_0
.end method

.method protected a(I)Lcom/hpplay/nanohttpd/a/a/e;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/e;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/nanohttpd/a/a/e;-><init>(Lcom/hpplay/nanohttpd/a/a/d;I)V

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/d;->g()Lcom/hpplay/nanohttpd/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ServerSocket;

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    .line 615
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 617
    invoke-virtual {p0, p1}, Lcom/hpplay/nanohttpd/a/a/d;->a(I)Lcom/hpplay/nanohttpd/a/a/e;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->r:[I

    invoke-virtual {v0, v1}, Lcom/hpplay/nanohttpd/a/a/e;->a([I)V

    .line 619
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->o:Lcom/hpplay/nanohttpd/a/a/e$a;

    invoke-virtual {v0, v1}, Lcom/hpplay/nanohttpd/a/a/e;->a(Lcom/hpplay/nanohttpd/a/a/e$a;)V

    .line 620
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    .line 621
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 622
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    const-string v2, "NanoHttpd Main Listener"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 624
    :goto_0
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/e;->a()Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_0

    .line 626
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/e;->a()Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 634
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/e;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 636
    :cond_1
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/f/b;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    .line 574
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/nanohttpd/b/a",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/e/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->w:Lcom/hpplay/nanohttpd/b/a;

    .line 584
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/nanohttpd/b/b",
            "<",
            "Ljava/net/ServerSocket;",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->t:Lcom/hpplay/nanohttpd/b/b;

    .line 515
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/nanohttpd/b/c",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Lcom/hpplay/nanohttpd/a/a/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->v:Lcom/hpplay/nanohttpd/b/c;

    .line 396
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 529
    new-instance v0, Lcom/hpplay/nanohttpd/a/a/d/b;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/nanohttpd/a/a/d/b;-><init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->t:Lcom/hpplay/nanohttpd/b/b;

    .line 530
    return-void
.end method

.method public varargs a([I)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d;->r:[I

    .line 392
    return-void
.end method

.method protected b(Lcom/hpplay/nanohttpd/a/a/c;)Lcom/hpplay/nanohttpd/a/a/c/c;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    sget-object v0, Lcom/hpplay/nanohttpd/a/a/c/d;->p:Lcom/hpplay/nanohttpd/a/a/c/d;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Lcom/hpplay/nanohttpd/a/a/c/b;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/nanohttpd/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(IZ)V

    .line 601
    return-void
.end method

.method public b(Lcom/hpplay/nanohttpd/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/nanohttpd/b/c",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/c;",
            "Lcom/hpplay/nanohttpd/a/a/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public c()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/d;->g()Lcom/hpplay/nanohttpd/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ServerSocket;

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    .line 331
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/d;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/hpplay/nanohttpd/a/a/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/hpplay/nanohttpd/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hpplay/nanohttpd/b/b",
            "<",
            "Ljava/net/ServerSocket;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->t:Lcom/hpplay/nanohttpd/b/b;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/hpplay/nanohttpd/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hpplay/nanohttpd/b/a",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/e/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->w:Lcom/hpplay/nanohttpd/b/a;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 593
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/hpplay/nanohttpd/a/a/d;->b(I)V

    .line 594
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/hpplay/nanohttpd/a/a/d;->a(Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->n:Lcom/hpplay/nanohttpd/a/a/f/b;

    invoke-interface {v0}, Lcom/hpplay/nanohttpd/a/a/f/b;->b()V

    .line 661
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    const-string v1, "NanoHTTPD"

    const-string v2, "Could not stop all connections"

    invoke-static {v1, v2, v0}, Lcom/hpplay/nanohttpd/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->s:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d;->u:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
