.class public abstract Lcom/hpplay/cybergarage/xml/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lcom/hpplay/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public abstract parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
.end method

.method public parse(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lcom/hpplay/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public parse(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 55
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 56
    const/16 v0, 0x50

    move v1, v0

    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 61
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    const-string v2, "Content-Length"

    const-string v5, "0"

    invoke-virtual {v0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v3, :cond_0

    .line 64
    const-string v2, "HOST"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 68
    invoke-virtual {p0, v5}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 70
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 88
    :goto_1
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 79
    new-instance v0, Lcom/hpplay/cybergarage/http/HTTPRequest;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>()V

    .line 80
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v4}, Lcom/hpplay/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v3, v1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;I)Lcom/hpplay/cybergarage/http/HTTPResponse;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    new-instance v0, Lcom/hpplay/cybergarage/xml/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP comunication failed: no answer from peer.Unable to retrive resoure -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getContent()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
