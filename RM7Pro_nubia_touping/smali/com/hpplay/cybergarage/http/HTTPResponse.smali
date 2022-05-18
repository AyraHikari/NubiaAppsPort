.class public Lcom/hpplay/cybergarage/http/HTTPResponse;
.super Lcom/hpplay/cybergarage/http/HTTPPacket;
.source "SourceFile"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    .line 30
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setVersion(Ljava/lang/String;)V

    .line 31
    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/hpplay/cybergarage/http/HTTPServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setServer(Ljava/lang/String;)V

    .line 33
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContent(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPPacket;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->set(Lcom/hpplay/cybergarage/http/HTTPPacket;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPSocket;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    .line 42
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_0
    new-instance v0, Lcom/hpplay/cybergarage/http/HTTPStatus;

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v0

    goto :goto_0
.end method

.method public getStatusLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    invoke-static {v1}, Lcom/hpplay/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

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

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/hpplay/cybergarage/http/HTTPResponse;->statusCode:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
