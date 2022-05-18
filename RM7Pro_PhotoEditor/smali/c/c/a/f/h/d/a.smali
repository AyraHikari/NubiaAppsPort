.class abstract Lc/c/a/f/h/d/a;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source ""


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:J

.field private d:Lc/c/a/f/g/e;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/c/a/f/h/d/a;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/f/h/d/a;->d:Lc/c/a/f/g/e;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lc/c/a/f/h/d/a;->b:J

    return-void
.end method

.method private b()Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/f/h/d/a;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method abstract a(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/f/h/d/a;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc/c/a/f/h/d/a;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/d/a;->a:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lc/c/a/f/h/d/a;->a:Ljava/io/InputStream;

    return-object v0

    :cond_1
    invoke-direct {p0}, Lc/c/a/f/h/d/a;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lc/c/a/f/h/d/a;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v3, p0, Lc/c/a/f/h/d/a;->c:J

    int-to-long v5, v2

    add-long v10, v3, v5

    iput-wide v10, p0, Lc/c/a/f/h/d/a;->c:J

    iget-object v7, p0, Lc/c/a/f/h/d/a;->d:Lc/c/a/f/g/e;

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lc/c/a/f/h/d/a;->b:J

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lc/c/a/f/g/e;->a(JJZ)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p0, Lc/c/a/f/h/d/a;->d:Lc/c/a/f/g/e;

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lc/c/a/f/h/d/a;->b:J

    iget-wide v4, p0, Lc/c/a/f/h/d/a;->c:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lc/c/a/f/g/e;->a(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {v0}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
