.class public Lcom/hpplay/sdk/source/mirror/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/nio/ByteBuffer;

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->g:I

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->d:Ljava/util/Vector;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->e:Ljava/util/Vector;

    .line 29
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->h:Ljava/nio/ByteBuffer;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 117
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->e:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", nonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTSP/1.0 401 Unauthorized\r\nServer: AirTunes/150.33\r\nWWW-Authenticate: Digest realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", nonce=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\nCSeq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nContent-Length: 0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;[BI)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/b/c;->i:I

    .line 40
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 42
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->f:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_0

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->g:I

    .line 46
    :cond_0
    const-string v0, "^(\\w+)\\W(.+)\\WRTSP/(.+)\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->b:Ljava/lang/String;

    .line 51
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->c:Ljava/lang/String;

    .line 54
    :cond_1
    const-string v0, "^([\\w-]+):\\W(.+)\r\n"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->d:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->e:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public a([BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->j:[B

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->j:[B

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->h:Ljava/nio/ByteBuffer;

    .line 76
    iput p3, p0, Lcom/hpplay/sdk/source/mirror/b/c;->g:I

    .line 77
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->j:[B

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->j:[B

    .line 69
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->g:I

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mirror/b/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/hpplay/sdk/source/mirror/b/c;->g:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "rtspacket"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const-string v0, ""

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xc8

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->i:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
