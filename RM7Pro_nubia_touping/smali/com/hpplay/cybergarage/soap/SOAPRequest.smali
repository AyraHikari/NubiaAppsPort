.class public Lcom/hpplay/cybergarage/soap/SOAPRequest;
.super Lcom/hpplay/cybergarage/http/HTTPRequest;
.source "SourceFile"


# static fields
.field private static final SOAPACTION:Ljava/lang/String; = "SOAPACTION"

.field private static final TAG:Ljava/lang/String; = "Cyber-SOAPRequest"


# instance fields
.field private rootNode:Lcom/hpplay/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>()V

    .line 42
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->setContentType(Ljava/lang/String;)V

    .line 43
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->setMethod(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 48
    return-void
.end method

.method private declared-synchronized getRootNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/soap/SOAPRequest;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/hpplay/cybergarage/soap/SOAPRequest;->rootNode:Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getContent()[B

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/soap/SOAPRequest;->rootNode:Lcom/hpplay/cybergarage/xml/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/cybergarage/soap/SOAPRequest;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "Cyber-SOAPRequest"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/hpplay/cybergarage/soap/SOAPRequest;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 107
    return-void
.end method


# virtual methods
.method public getBodyNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 138
    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getSOAPAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSOAPAction(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    const-string v2, "SOAPACTION"

    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getSOAPAction()Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;I)Lcom/hpplay/cybergarage/soap/SOAPResponse;
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->post(Ljava/lang/String;I)Lcom/hpplay/cybergarage/http/HTTPResponse;

    move-result-object v1

    .line 81
    new-instance v0, Lcom/hpplay/cybergarage/soap/SOAPResponse;

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;-><init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V

    .line 83
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getContent()[B

    move-result-object v1

    .line 84
    array-length v2, v1

    if-gtz v2, :cond_0

    .line 96
    :goto_0
    return-object v0

    .line 88
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "Cyber-SOAPRequest"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "Cyber-SOAPRequest"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->hasContent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 169
    const-string v1, "Cyber-SOAPRequest"

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, ""

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->setContent(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 130
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/soap/SOAPRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
