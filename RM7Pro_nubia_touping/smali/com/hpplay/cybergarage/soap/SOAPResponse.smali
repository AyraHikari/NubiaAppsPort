.class public Lcom/hpplay/cybergarage/soap/SOAPResponse;
.super Lcom/hpplay/cybergarage/http/HTTPResponse;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-SOAPResponse"


# instance fields
.field private rootNode:Lcom/hpplay/cybergarage/xml/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 36
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 37
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V

    .line 42
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 43
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>(Lcom/hpplay/cybergarage/http/HTTPResponse;)V

    .line 48
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 49
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private getRootNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/cybergarage/soap/SOAPResponse;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method private setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hpplay/cybergarage/soap/SOAPResponse;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 60
    return-void
.end method


# virtual methods
.method public getBodyNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Body"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getFaultActor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultActorNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultActorNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "faultactor"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultCodeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const-string v0, ""

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultCodeNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "faultcode"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultDetailNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultStringNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    const-string v0, ""

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaultStringNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getFaultNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "faultstring"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethodResponseNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "Cyber-SOAPResponse"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->hasContent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 173
    const-string v1, "Cyber-SOAPResponse"

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, ""

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
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

    .line 159
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setContent(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 72
    return-void
.end method
