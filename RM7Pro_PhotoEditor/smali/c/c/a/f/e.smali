.class public Lc/c/a/f/e;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private a:Lorg/apache/http/HttpResponse;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/c/a/f/e;->g:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "result may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/c/a/f/e;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lc/c/a/f/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/f/e;->d:Ljava/lang/String;

    iput-wide p4, p0, Lc/c/a/f/e;->f:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseResponse may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lc/c/a/f/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lc/c/a/f/e;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/e;->g:Ljava/lang/String;

    iget-object v0, p0, Lc/c/a/f/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lc/c/a/b;->f:Lc/c/a/f/a;

    iget-object v1, p0, Lc/c/a/f/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/f/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/f/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/f/e;->g:Ljava/lang/String;

    iget-wide v3, p0, Lc/c/a/f/e;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lc/c/a/f/a;->d(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lc/c/a/f/e;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    invoke-static {v1}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    invoke-static {v1}, Lc/c/a/h/b;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method public available()I
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/f/e;->e:Ljava/lang/String;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1

    iget-object v0, p0, Lc/c/a/f/e;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
