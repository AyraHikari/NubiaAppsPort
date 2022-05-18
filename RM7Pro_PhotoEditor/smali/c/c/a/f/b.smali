.class public Lc/c/a/f/b;
.super Lc/c/a/g/c;
.source ""

# interfaces
.implements Lc/c/a/f/g/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/b$b;,
        Lc/c/a/f/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/g/c<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lc/c/a/f/g/e;"
    }
.end annotation


# static fields
.field private static final y:Lc/c/a/f/b$b;


# instance fields
.field private final h:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final i:Lorg/apache/http/protocol/HttpContext;

.field private j:Lc/c/a/f/g/c;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lorg/apache/http/client/methods/HttpRequestBase;

.field private n:Z

.field private o:Lc/c/a/f/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/f/g/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lc/c/a/f/b$c;

.field private w:J

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/f/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/f/b$b;-><init>(Lc/c/a/f/b$a;)V

    sput-object v0, Lc/c/a/f/b;->y:Lc/c/a/f/b$b;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lc/c/a/f/g/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lc/c/a/f/g/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/g/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/f/b;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/f/b;->p:I

    const/4 v1, 0x0

    iput-object v1, p0, Lc/c/a/f/b;->q:Ljava/lang/String;

    iput-boolean v0, p0, Lc/c/a/f/b;->r:Z

    iput-boolean v0, p0, Lc/c/a/f/b;->s:Z

    iput-boolean v0, p0, Lc/c/a/f/b;->t:Z

    sget-object v0, Lc/c/a/f/b$c;->a:Lc/c/a/f/b$c;

    iput-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    invoke-static {}, Lc/c/a/f/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/f/b;->w:J

    iput-object p1, p0, Lc/c/a/f/b;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lc/c/a/f/b;->i:Lorg/apache/http/protocol/HttpContext;

    iput-object p4, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    iput-object p3, p0, Lc/c/a/f/b;->u:Ljava/lang/String;

    sget-object p2, Lc/c/a/f/b;->y:Lc/c/a/f/b$b;

    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private s(Lorg/apache/http/HttpResponse;)Lc/c/a/f/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lc/c/a/f/d<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lc/c/a/g/c;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_4

    iput-boolean v0, p0, Lc/c/a/f/b;->n:Z

    iget-boolean v2, p0, Lc/c/a/f/b;->r:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lc/c/a/f/b;->s:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Lc/c/a/h/d;->f(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lc/c/a/f/b;->s:Z

    iget-boolean v2, p0, Lc/c/a/f/b;->t:Z

    if-eqz v2, :cond_2

    invoke-static {p1}, Lc/c/a/h/d;->c(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v9, v1

    new-instance v4, Lc/c/a/f/g/b;

    invoke-direct {v4}, Lc/c/a/f/g/b;-><init>()V

    iget-object v7, p0, Lc/c/a/f/b;->q:Ljava/lang/String;

    iget-boolean v8, p0, Lc/c/a/f/b;->s:Z

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lc/c/a/f/g/b;->a(Lorg/apache/http/HttpEntity;Lc/c/a/f/g/e;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Lc/c/a/f/g/f;

    invoke-direct {v1}, Lc/c/a/f/g/f;-><init>()V

    iget-object v2, p0, Lc/c/a/f/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v5, p0, v2}, Lc/c/a/f/g/f;->a(Lorg/apache/http/HttpEntity;Lc/c/a/f/g/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/c/a/b;->f:Lc/c/a/f/a;

    iget-object v3, p0, Lc/c/a/f/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/c/a/f/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lc/c/a/f/b;->k:Ljava/lang/String;

    iget-wide v4, p0, Lc/c/a/f/b;->w:J

    invoke-virtual {v2, v3, v1, v4, v5}, Lc/c/a/f/a;->d(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    new-instance v2, Lc/c/a/f/d;

    invoke-direct {v2, p1, v1, v0}, Lc/c/a/f/d;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v2

    :cond_5
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x1a0

    if-ne v2, p1, :cond_7

    new-instance p1, Lc/c/a/e/c;

    const-string v0, "maybe the file has downloaded completely"

    invoke-direct {p1, v2, v0}, Lc/c/a/e/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lc/c/a/e/c;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lc/c/a/e/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    iget-object v0, p0, Lc/c/a/f/b;->j:Lc/c/a/f/g/c;

    if-nez v0, :cond_9

    new-instance v0, Lc/c/a/f/g/a;

    invoke-direct {v0}, Lc/c/a/f/g/a;-><init>()V

    iput-object v0, p0, Lc/c/a/f/b;->j:Lc/c/a/f/g/c;

    :cond_9
    iget-object v0, p0, Lc/c/a/f/b;->j:Lc/c/a/f/g/c;

    invoke-interface {v0, p1}, Lc/c/a/f/g/c;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lc/c/a/f/b;->t(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/d;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v1

    :cond_b
    new-instance p1, Lc/c/a/e/c;

    const-string v0, "response is null"

    invoke-direct {p1, v0}, Lc/c/a/e/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private t(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lc/c/a/f/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/f/b;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/b;->s:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lc/c/a/f/b;->r:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/c/a/f/b;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_1

    :cond_0
    move-wide v1, v3

    :goto_1
    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RANGE"

    invoke-virtual {p1, v2, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/c/a/f/b;->l:Ljava/lang/String;

    sget-object v3, Lc/c/a/b;->f:Lc/c/a/f/a;

    invoke-virtual {v3, v2}, Lc/c/a/f/a;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/c/a/f/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lc/c/a/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lc/c/a/f/d;

    invoke-direct {v3, v4, v2, v1}, Lc/c/a/f/d;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v3

    :cond_2
    invoke-virtual {p0}, Lc/c/a/g/c;->i()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lc/c/a/f/b;->h:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lc/c/a/f/b;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, p1, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/c/a/f/b;->s(Lorg/apache/http/HttpResponse;)Lc/c/a/f/d;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/c/a/e/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v4

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v2, p0, Lc/c/a/f/b;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Lc/c/a/f/b;->p:I

    iget-object v1, p0, Lc/c/a/f/b;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_3
    iget v3, p0, Lc/c/a/f/b;->p:I

    add-int/2addr v3, v1

    iput v3, p0, Lc/c/a/f/b;->p:I

    iget-object v1, p0, Lc/c/a/f/b;->i:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v3, v2

    :goto_4
    if-eqz v1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lc/c/a/e/c;

    invoke-direct {p1, v3}, Lc/c/a/e/c;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(JJZ)Z
    .locals 10

    iget-object v0, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    sget-object v3, Lc/c/a/f/b$c;->e:Lc/c/a/f/b$c;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_0

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lc/c/a/g/c;->q([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc/c/a/f/b;->x:J

    sub-long v6, v4, v6

    iget-object p5, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    invoke-virtual {p5}, Lc/c/a/f/g/d;->a()I

    move-result p5

    int-to-long v8, p5

    cmp-long p5, v6, v8

    if-ltz p5, :cond_1

    iput-wide v4, p0, Lc/c/a/f/b;->x:J

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lc/c/a/g/c;->q([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    sget-object p2, Lc/c/a/f/b$c;->e:Lc/c/a/f/b$c;

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method protected bridge synthetic f([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc/c/a/f/b;->r([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs n([Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    sget-object v1, Lc/c/a/f/b$c;->e:Lc/c/a/f/b$c;

    if-eq v0, v1, :cond_8

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-eq v0, v3, :cond_2

    return-void

    :cond_2
    sget-object v0, Lc/c/a/f/b$c;->f:Lc/c/a/f/b$c;

    iput-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    iget-object v0, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    aget-object p1, p1, v1

    check-cast p1, Lc/c/a/f/d;

    invoke-virtual {v0, p1}, Lc/c/a/f/g/d;->e(Lc/c/a/f/d;)V

    goto :goto_0

    :cond_3
    array-length v0, p1

    if-eq v0, v2, :cond_4

    return-void

    :cond_4
    sget-object v0, Lc/c/a/f/b$c;->d:Lc/c/a/f/b$c;

    iput-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    iget-object v0, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    aget-object v1, p1, v1

    check-cast v1, Lc/c/a/e/c;

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc/c/a/f/g/d;->b(Lc/c/a/e/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    array-length v0, p1

    if-eq v0, v2, :cond_6

    return-void

    :cond_6
    sget-object v0, Lc/c/a/f/b$c;->c:Lc/c/a/f/b$c;

    iput-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    iget-object v4, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v9, p0, Lc/c/a/f/b;->n:Z

    invoke-virtual/range {v4 .. v9}, Lc/c/a/f/g/d;->c(JJZ)V

    goto :goto_0

    :cond_7
    sget-object p1, Lc/c/a/f/b$c;->b:Lc/c/a/f/b$c;

    iput-object p1, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    iget-object p1, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    invoke-virtual {p1}, Lc/c/a/f/g/d;->d()V

    :cond_8
    :goto_0
    return-void
.end method

.method protected varargs r([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 7

    iget-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    sget-object v1, Lc/c/a/f/b$c;->e:Lc/c/a/f/b$c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v0, v4, :cond_2

    aget-object v0, p1, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lc/c/a/f/b;->r:Z

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc/c/a/f/b;->s:Z

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc/c/a/f/b;->t:Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/c/a/f/b;->v:Lc/c/a/f/b$c;

    if-ne v0, v1, :cond_3

    return-object v2

    :cond_3
    aget-object p1, p1, v5

    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p1, p0, Lc/c/a/f/b;->m:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/b;->k:Ljava/lang/String;

    iget-object v0, p0, Lc/c/a/f/b;->o:Lc/c/a/f/g/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lc/c/a/f/g/d;->f(Ljava/lang/String;)V

    :cond_4
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-virtual {p0, p1}, Lc/c/a/g/c;->q([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/f/b;->x:J

    iget-object p1, p0, Lc/c/a/f/b;->m:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, p1}, Lc/c/a/f/b;->t(Lorg/apache/http/client/methods/HttpRequestBase;)Lc/c/a/f/d;

    move-result-object p1

    if-eqz p1, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p1, v0, v6

    invoke-virtual {p0, v0}, Lc/c/a/g/c;->q([Ljava/lang/Object;)V
    :try_end_0
    .catch Lc/c/a/e/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p1, v0, v6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lc/c/a/g/c;->q([Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v2
.end method

.method public u(J)V
    .locals 0

    iput-wide p1, p0, Lc/c/a/f/b;->w:J

    return-void
.end method

.method public v(Lc/c/a/f/g/c;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/c/a/f/b;->j:Lc/c/a/f/g/c;

    :cond_0
    return-void
.end method
