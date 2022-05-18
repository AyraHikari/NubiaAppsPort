.class public Lcom/hpplay/cybergarage/http/HTTPRequest;
.super Lcom/hpplay/cybergarage/http/HTTPPacket;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-HTTPRequest"


# instance fields
.field private httpSocket:Lcom/hpplay/cybergarage/http/HTTPSocket;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;-><init>()V

    .line 101
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestPort:I

    .line 233
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->httpSocket:Lcom/hpplay/cybergarage/http/HTTPSocket;

    .line 357
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 85
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPSocket;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setSocket(Lcom/hpplay/cybergarage/http/HTTPSocket;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 101
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestPort:I

    .line 233
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->httpSocket:Lcom/hpplay/cybergarage/http/HTTPSocket;

    .line 357
    iput-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 90
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->hasFirstLine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lcom/hpplay/cybergarage/http/ParameterList;
    .locals 6

    .prologue
    .line 173
    new-instance v2, Lcom/hpplay/cybergarage/http/ParameterList;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/http/ParameterList;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 175
    if-nez v3, :cond_0

    move-object v0, v2

    .line 189
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 178
    if-gez v1, :cond_1

    move-object v0, v2

    .line 179
    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    if-lez v1, :cond_3

    .line 181
    const/16 v0, 0x3d

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 182
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 183
    const/16 v1, 0x26

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 184
    add-int/lit8 v5, v0, 0x1

    if-lez v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v5, Lcom/hpplay/cybergarage/http/Parameter;

    invoke-direct {v5, v4, v0}, Lcom/hpplay/cybergarage/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v5}, Lcom/hpplay/cybergarage/http/ParameterList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 189
    goto :goto_0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getParameterList()Lcom/hpplay/cybergarage/http/ParameterList;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->httpSocket:Lcom/hpplay/cybergarage/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 121
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .locals 1

    .prologue
    .line 129
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isCloseConnection()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isKeepAliveConnection()Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v2

    .line 312
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v1

    .line 313
    :goto_1
    if-eq v2, v1, :cond_0

    move v0, v1

    .line 315
    goto :goto_0

    :cond_3
    move v2, v0

    .line 312
    goto :goto_1
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNotifyRequest()Z
    .locals 1

    .prologue
    .line 141
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 125
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 202
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 133
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;I)Lcom/hpplay/cybergarage/http/HTTPResponse;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;IZ)Lcom/hpplay/cybergarage/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;IZ)Lcom/hpplay/cybergarage/http/HTTPResponse;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 360
    new-instance v4, Lcom/hpplay/cybergarage/http/HTTPResponse;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 362
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setHost(Ljava/lang/String;)V

    .line 364
    if-ne p3, v10, :cond_8

    const-string v0, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v5

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 375
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v3, 0x13880

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 379
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 381
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isChunked()Z

    move-result v6

    .line 385
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v7

    .line 386
    const/4 v0, 0x0

    .line 387
    if-eqz v7, :cond_1

    .line 388
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 390
    :cond_1
    if-lez v0, :cond_3

    .line 391
    if-ne v6, v10, :cond_2

    .line 393
    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 395
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 398
    if-ne v6, v10, :cond_3

    .line 399
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 402
    :cond_3
    if-ne v6, v10, :cond_4

    .line 403
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 404
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 407
    :cond_4
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 409
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 410
    :try_start_2
    invoke-virtual {v4, v1, v5}, Lcom/hpplay/cybergarage/http/HTTPResponse;->set(Ljava/io/InputStream;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    if-nez p3, :cond_7

    .line 417
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 421
    :goto_1
    if-eqz v1, :cond_5

    .line 423
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 427
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 429
    :try_start_5
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 433
    :cond_6
    :goto_3
    iput-object v2, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 437
    :cond_7
    :goto_4
    return-object v4

    .line 364
    :cond_8
    const-string v0, "close"

    goto/16 :goto_0

    .line 411
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 412
    :goto_5
    const/16 v5, 0x1f4

    :try_start_6
    invoke-virtual {v4, v5}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 413
    const-string v5, "Cyber-HTTPRequest"

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 415
    if-nez p3, :cond_7

    .line 417
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 421
    :goto_6
    if-eqz v1, :cond_9

    .line 423
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 427
    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    .line 429
    :try_start_9
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 433
    :cond_a
    :goto_8
    iput-object v2, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_4

    .line 415
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_9
    if-nez p3, :cond_d

    .line 417
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 421
    :goto_a
    if-eqz v1, :cond_b

    .line 423
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 427
    :cond_b
    :goto_b
    if-eqz v3, :cond_c

    .line 429
    :try_start_c
    iget-object v1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 433
    :cond_c
    :goto_c
    iput-object v2, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    :cond_d
    throw v0

    .line 418
    :catch_1
    move-exception v0

    goto :goto_1

    .line 424
    :catch_2
    move-exception v0

    goto :goto_2

    .line 418
    :catch_3
    move-exception v0

    goto :goto_6

    .line 424
    :catch_4
    move-exception v0

    goto :goto_7

    .line 418
    :catch_5
    move-exception v4

    goto :goto_a

    .line 424
    :catch_6
    move-exception v1

    goto :goto_b

    .line 430
    :catch_7
    move-exception v1

    goto :goto_c

    .line 415
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 430
    :catch_8
    move-exception v0

    goto :goto_8

    .line 411
    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_5

    .line 430
    :catch_b
    move-exception v0

    goto :goto_3
.end method

.method public post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getContentLength()J

    move-result-wide v6

    .line 334
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->hasContentRange()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getContentRangeFirstPosition()J

    move-result-wide v2

    .line 336
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getContentRangeLastPosition()J

    move-result-wide v8

    .line 339
    cmp-long v1, v8, v4

    if-gtz v1, :cond_2

    .line 340
    sub-long v4, v6, v10

    .line 341
    :goto_0
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 342
    :cond_0
    const/16 v0, 0x1a0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    .line 349
    :goto_1
    return v0

    :cond_1
    move-object v1, p1

    .line 343
    invoke-virtual/range {v1 .. v7}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentRange(JJJ)V

    .line 344
    const/16 v1, 0xce

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 347
    sub-long/2addr v4, v2

    add-long/2addr v4, v10

    .line 349
    :goto_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/cybergarage/http/HTTPSocket;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;JJZ)Z

    move-result v0

    goto :goto_1

    :cond_2
    move-wide v4, v8

    goto :goto_0

    :cond_3
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_2
.end method

.method public print()V
    .locals 2

    .prologue
    .line 487
    const-string v0, "Cyber-HTTPRequest"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public read()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPPacket;->read(Lcom/hpplay/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .locals 1

    .prologue
    .line 465
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .locals 4

    .prologue
    .line 458
    new-instance v0, Lcom/hpplay/cybergarage/http/HTTPResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 459
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 460
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    move-result v0

    return v0
.end method

.method public set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->set(Lcom/hpplay/cybergarage/http/HTTPPacket;)V

    .line 450
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getSocket()Lcom/hpplay/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setSocket(Lcom/hpplay/cybergarage/http/HTTPSocket;)V

    .line 451
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->requestPort:I

    .line 223
    return-void
.end method

.method public setSocket(Lcom/hpplay/cybergarage/http/HTTPSocket;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->httpSocket:Lcom/hpplay/cybergarage/http/HTTPSocket;

    .line 237
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 152
    if-nez p2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
