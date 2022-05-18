.class public Lcom/hpplay/cybergarage/http/HTTPSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPSocket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 85
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 86
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 46
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 47
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 48
    invoke-direct {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 85
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 86
    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 41
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 42
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->open()Z

    .line 43
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private post(Lcom/hpplay/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .locals 13

    .prologue
    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 184
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 187
    :try_start_0
    move-wide/from16 v0, p5

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 189
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 190
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 192
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 193
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 194
    const/4 v2, 0x1

    .line 233
    :goto_0
    return v2

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->isChunked()Z

    move-result v7

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    .line 200
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 202
    :cond_1
    invoke-static {}, Lcom/hpplay/cybergarage/http/HTTP;->getChunkSize()I

    move-result v8

    .line 203
    new-array v9, v8, [B

    .line 204
    const-wide/16 v4, 0x0

    .line 205
    int-to-long v2, v8

    cmp-long v2, v2, p5

    if-gez v2, :cond_4

    int-to-long v2, v8

    .line 206
    :goto_1
    const/4 v10, 0x0

    long-to-int v2, v2

    invoke-virtual {p2, v9, v10, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 207
    :goto_2
    if-lez v2, :cond_6

    cmp-long v3, v4, p5

    if-gez v3, :cond_6

    .line 208
    const/4 v3, 0x1

    if-ne v7, v3, :cond_2

    .line 210
    int-to-long v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    .line 212
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    .line 214
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    .line 216
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write([B)V

    .line 217
    :cond_3
    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 218
    int-to-long v2, v8

    sub-long v10, p5, v4

    cmp-long v2, v2, v10

    if-gez v2, :cond_5

    int-to-long v2, v8

    .line 219
    :goto_3
    const/4 v10, 0x0

    long-to-int v2, v2

    invoke-virtual {p2, v9, v10, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_2

    :cond_4
    move-wide/from16 v2, p5

    .line 205
    goto :goto_1

    .line 218
    :cond_5
    sub-long v2, p5, v4

    goto :goto_3

    .line 222
    :cond_6
    const/4 v2, 0x1

    if-ne v7, v2, :cond_7

    .line 223
    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 224
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 227
    :cond_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/4 v2, 0x1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 230
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private post(Lcom/hpplay/cybergarage/http/HTTPResponse;[BJJZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 142
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 145
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 147
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 149
    if-ne p7, v0, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 177
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->isChunked()Z

    move-result v2

    .line 156
    if-ne v2, v0, :cond_1

    .line 158
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 160
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 163
    :cond_1
    long-to-int v3, p3

    long-to-int v4, p5

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    if-ne v2, v0, :cond_2

    .line 166
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 167
    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 168
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 171
    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 90
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 98
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 63
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->close()Z

    .line 53
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 112
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Lcom/hpplay/cybergarage/http/HTTPResponse;JJZ)Z
    .locals 10

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hpplay/cybergarage/http/HTTPSocket;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getContent()[B

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hpplay/cybergarage/http/HTTPSocket;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;[BJJZ)Z

    move-result v0

    goto :goto_0
.end method
