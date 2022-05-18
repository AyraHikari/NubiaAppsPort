.class public Lcom/hpplay/nanohttpd/a/a/c/a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/a;->out:Ljava/io/OutputStream;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 56
    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/nanohttpd/a/a/c/a;->write([BII)V

    .line 57
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/nanohttpd/a/a/c/a;->write([BII)V

    .line 62
    return-void
.end method

.method public write([BII)V
    .locals 5

    .prologue
    .line 66
    if-nez p3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/a;->out:Ljava/io/OutputStream;

    const-string v1, "%x\r\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/c/a;->out:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
